# ============================================================
# Import-ChinaToSupabase.ps1 v2（純增量模式）
# 將中國史料 CSV 匯入 Supabase（產生 INSERT SQL）
# Metadata v1.3 → 正規化資料庫（含 region 欄位）
#
# 用法：
#   .\Import-ChinaToSupabase.ps1                                # 處理所有 CSV
#   .\Import-ChinaToSupabase.ps1 -CsvFile "metadata_魏晉南北朝.csv"  # 只處理單一時期
#   .\Import-ChinaToSupabase.ps1 -DryRun                        # 只看不執行
# ============================================================

param(
    [string]$CsvFile,
    [switch]$DryRun
)

$ErrorActionPreference = 'Stop'

# === 設定 ===
$OutputDir   = Split-Path -Parent $PSCommandPath
$OutputSql   = Join-Path $OutputDir "import_china_sources.sql"
$CsvDir      = Join-Path $OutputDir "中國"

# === Supabase 連線資訊 ===
$SupabaseUrl = "https://ushwjujxqvonyjumzgkp.supabase.co"
$AnonKey     = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVzaHdqdWp4cXZvbnlqdW16Z2twIiwicm9sZSI6ImFub24iLCJpYXQiOjE3ODUyMTQwNTMsImV4cCI6MjEwMDc5MDA1M30._pOtF2T9FQIT0z0nFNUZq6kyGH9-2hPvORZgmujBOWc"

# === T 分類對照 ===
$TypeMap = @{
    '官方檔案文書'       = 1
    '方志與輿圖'         = 2
    '報刊與雜誌'         = 3
    '人物傳記與家族史料'  = 4
    '照片與影像'         = 5
    '統計與調查資料'      = 6
    '考古與物質文化'      = 7
    '碑碣與實物刻文'      = 8
    '口述歷史'           = 9
    '產業與經濟實錄'      = 10
    '教育與醫療史'       = 11
    '自然與環境背景'     = 12
    '傳世文獻'           = 7
}

# === M 分類對照 ===
$MaterialMap = @{'文字'=1; '圖檔'=2; '地圖'=3; '影音'=4}

# === 全形／半形 Dash 集合（CSV 空值標記） ===
$DashPattern = '^[﹣－—–—―\-−‐]+$'

# === 非機構關鍵字 ===
$NonInstitutionSet = @(
    'ctext.org',
    '方志', '檔案', '學術期刊', '學術研究', '學術論文', '學術專書'
    '學術報告', '學術出版', '學術文獻', '學術出版社', '學術研究文獻'
    '學術研究與訪談', '學術報告與論文', '學術報告與田野調查'
    '學術期刊論文', '學術期刊與出版社散見', '學術期刊與專書散見'
    '學術論文與專書', '學術論文與專書散見', '學術研究論文'
    '國際學術期刊', '國際學術期刊群', '國際古氣候學期刊'
    '地理學／考古學期刊', '地理學', '考古學期刊'
    '田野調查', '田野', '海外原件'
    '博物館', '各大學', '各大學地理系'
    '學術中譯本', '國際期刊論文', '古蹟調查報告', '古蹟調查'
    '原住民團體', '原件', '中譯本', '刊本', '散見'
)

function Normalize-InstitutionName {
    param([string]$raw)
    if ([string]::IsNullOrWhiteSpace($raw)) { return $null }
    $name = $raw.Trim()
    $name = $name -replace '[（(][^）)]*[）)]', ''
    $name = $name -replace '[（(][^）)]*$', ''
    $name = $name.Trim()
    if ([string]::IsNullOrWhiteSpace($name)) { return $null }
    if ($name -match $DashPattern) { return $null }
    if ($name.Length -le 2) { return $null }
    return $name
}

function Is-ValidInstitution {
    param([string]$name)
    if ([string]::IsNullOrWhiteSpace($name)) { return $false }
    if ($name.Length -le 1) { return $false }
    if ($name -match $DashPattern) { return $false }
    if ($NonInstitutionSet -contains $name) { return $false }
    $institutionKeywords = @(
        '圖書館', '博物館', '博物院', '檔案館', '研究所', '大學', '學院'
        '文獻館', '書局', '出版社', '出版公司', '中心'
        '基金會', '委員會', '文化局', '文化處', '文化資產'
        '公報社', '氣象局', '數位', '檔案', '史料', '文獻'
        '國家', '國立', '市立', '縣立'
        '政府', '總督府', '殖民', '行'
        '國會', '海關', '海軍', '軍醫院', '水文'
        '社科院', '研究院', '研究與保護中心'
        'GIS', 'THDL', 'Wellcome'
    )
    $hasKw = ($institutionKeywords | Where-Object { $name -match [regex]::Escape($_) }).Count -gt 0
    if ($name -match '[、,]' -and -not $hasKw) { return $false }
    if ($name -match '^[a-zA-Z0-9 &.]+$' -and $name.Length -ge 3) { return $true }
    return $hasKw
}

function Remove-DuplicateConcat {
    param([string]$name)
    if ($name.Length -le 6) { return $name }
    $half = [Math]::Floor($name.Length / 2)
    if ($name.Substring(0, $half) -eq $name.Substring($half)) {
        return $name.Substring(0, $half)
    }
    $third = [Math]::Floor($name.Length / 3)
    if ($third -ge 2 -and $name.Substring(0, $third) -eq $name.Substring($name.Length - $third)) {
        return $name.Substring(0, $name.Length - $third)
    }
    return $name
}

function Split-InstitutionField {
    param([string]$field)
    $result = @()
    if ([string]::IsNullOrWhiteSpace($field)) { return $result }
    $field -split ';' | ForEach-Object { $_.Trim() } | Where-Object { $_ -ne '' } | ForEach-Object {
        $part = Normalize-InstitutionName $_
        if ([string]::IsNullOrWhiteSpace($part)) { return }
        if ($part -match '[／/]') {
            $part -split '[／/]' | ForEach-Object { $_.Trim() } | Where-Object { $_ -ne '' } | ForEach-Object {
                $n = Normalize-InstitutionName $_
                if ($n -and (Is-ValidInstitution $n)) { $result += (Remove-DuplicateConcat $n) }
            }
        } else {
            $deduped = Remove-DuplicateConcat $part
            if (Is-ValidInstitution $deduped) { $result += $deduped }
        }
    }
    return ,@($result | Select-Object -Unique)
}

function Get-NonInstitutionDesc {
    param([string]$field)
    $parts = @()
    if ([string]::IsNullOrWhiteSpace($field)) { return $null }
    $field -split ';' | ForEach-Object { $_.Trim() } | Where-Object { $_ -ne '' } | ForEach-Object {
        $n = Normalize-InstitutionName $_
        if ($n -and -not (Is-ValidInstitution $n) -and $n -notmatch $DashPattern) {
            $parts += $n
        } elseif ($n -and $_ -match '[／/]') {
            $n -split '[／/]' | ForEach-Object { $_.Trim() } | Where-Object { $_ -ne '' } | ForEach-Object {
                $nn = Normalize-InstitutionName $_
                if ($nn -and -not (Is-ValidInstitution $nn) -and $nn -notmatch $DashPattern) {
                    $parts += $nn
                }
            }
        }
    }
    if ($parts.Count -eq 0) { return $null }
    return ($parts | Select-Object -Unique) -join '; '
}

# === 從 Supabase 查詢當前狀態（純增量核心） ===
function Get-SupabaseCurrentId {
    param([string]$table, [string]$column = "id")
    $url = "$SupabaseUrl/rest/v1/$table`?select=$column&order=$column.desc&limit=1"
    $headers = @{ "apikey" = $AnonKey; "Authorization" = "Bearer $AnonKey" }
    $result = Invoke-RestMethod -Uri $url -Headers $headers -ContentType "application/json"
    if ($result -and $result.Count -gt 0) { return [int]$result[0].$column }
    return 0
}

function Get-SupabaseInstitutions {
    $url = "$SupabaseUrl/rest/v1/institutions?select=id,name_zh&order=id"
    $headers = @{ "apikey" = $AnonKey; "Authorization" = "Bearer $AnonKey" }
    $result = Invoke-RestMethod -Uri $url -Headers $headers -ContentType "application/json"
    $map = @{}
    if ($result) {
        foreach ($row in $result) { $map[$row.name_zh] = [int]$row.id }
    }
    return $map
}

function Get-SupabaseIdentifiers {
    $url = "$SupabaseUrl/rest/v1/sources?select=identifier&identifier=not.is.null"
    $headers = @{ "apikey" = $AnonKey; "Authorization" = "Bearer $AnonKey" }
    $result = Invoke-RestMethod -Uri $url -Headers $headers -ContentType "application/json"
    $set = @{}
    if ($result) {
        foreach ($row in $result) { if ($row.identifier) { $set[$row.identifier] = $true } }
    }
    return $set
}

# === 決定要處理哪些 CSV ===
$allCsvFiles = @(
    "metadata_中國史前.csv",
    "metadata_中國夏商周.csv",
    "metadata_中國秦.csv",
    "metadata_中國漢.csv",
    "metadata_中國魏晉南北朝.csv",
    "metadata_中國隋.csv",
    "metadata_中國唐.csv",
    "metadata_中國五代十國.csv",
    "metadata_中國北宋.csv",
    "metadata_中國南宋.csv",
    "metadata_中國遼.csv",
    "metadata_中國金.csv",
    "metadata_中國元.csv",
    "metadata_中國元_補充.csv",
    "metadata_中國明.csv",
    "metadata_中國清.csv"
)

if ($CsvFile) {
    if (-not (Test-Path (Join-Path $CsvDir $CsvFile))) {
        Write-Error "找不到檔案: 中國\$CsvFile"
        exit 1
    }
    $CsvFiles = @($CsvFile)
    Write-Host "增量模式：只處理 $CsvFile"
} else {
    $CsvFiles = $allCsvFiles
    Write-Host "完整模式：處理所有中國 CSV（已存在的會用 ON CONFLICT 跳過）"
}

# === 連線 Supabase ===
Write-Host "`n=== 查詢 Supabase 當前狀態 ==="
try {
    if (-not $DryRun) {
        $ExistingInstIds = Get-SupabaseInstitutions
        $ExistingIdentifiers = Get-SupabaseIdentifiers
        $MaxSourceId     = Get-SupabaseCurrentId "sources"
        $MaxInstId       = Get-SupabaseCurrentId "institutions"
        Write-Host "sources MAX(id) = $MaxSourceId"
        Write-Host "institutions MAX(id) = $MaxInstId"
        Write-Host "institutions 總數 = $($ExistingInstIds.Count)"
        Write-Host "已存在 identifier 數 = $($ExistingIdentifiers.Count)"
    } else {
        Write-Host "（乾執行模式，不查詢 Supabase）"
        $ExistingInstIds = @{}
        $ExistingIdentifiers = @{}
        $MaxSourceId = 0
        $MaxInstId = 0
    }
} catch {
    Write-Error "無法連線 Supabase：$_"
    Write-Warning "請檢查網路連線或 Supabase project 狀態"
    exit 1
}

# === 主程式 ===
Write-Host "`n=== 開始匯入中國史料 CSV ==="

$allSources = @()
$allInstitutions = @{}
$totalRows = 0
$skipCount = 0

foreach ($filename in $CsvFiles) {
    $csvPath = Join-Path $CsvDir $filename
    Write-Host "讀取: 中國\$filename"
    $data = Import-Csv $csvPath -Encoding UTF8
    $totalRows += $data.Count

    foreach ($row in $data) {
        if ($row.識別碼 -and $ExistingIdentifiers.ContainsKey($row.識別碼)) {
            $skipCount++
            continue
        }

        $era = if ($row.年代範圍 -and $row.年代範圍 -ne '–' -and $row.年代範圍 -ne '﹣') { $row.年代範圍 } else { '' }
        $periodId = $null
        switch -Wildcard ($era) {
            '舊石器時代–*' { $periodId = $null; break }
            '新石器時代–*' { $periodId = $null; break }
            '舊石器*' { $periodId = 24; break }
            '新石器*' { $periodId = 24; break }
            '史前*' { $periodId = 24; break }
            '夏*' { $periodId = 7; break }
            '商*' { $periodId = 8; break }
            '夏–商*' { $periodId = 7; break }
            '西周*' { $periodId = 9; break }
            '戰國*' { $periodId = 10; break }
            '東周*' { $periodId = 10; break }
            '春秋*' { $periodId = 10; break }
            '商–戰國*' { $periodId = 8; break }
            '*西周*' { $periodId = 9; break }
            '秦*' { $periodId = 11; break }
            '秦–*' { $periodId = 11; break }
            '西漢*' { $periodId = 12; break }
            '東漢*' { $periodId = 12; break }
            '漢*' { $periodId = 12; break }
            '漢–*' { $periodId = 12; break }
            '三國*' { $periodId = 13; break }
            '西晉*' { $periodId = 13; break }
            '東晉*' { $periodId = 13; break }
            '東晉–*' { $periodId = 13; break }
            '晉*' { $periodId = 13; break }
            '南北朝*' { $periodId = 13; break }
            '南朝*' { $periodId = 13; break }
            '北朝*' { $periodId = 13; break }
            '北魏*' { $periodId = 13; break }
            '魏晉*' { $periodId = 13; break }
            '十六國*' { $periodId = 13; break }
            '隋唐*' { $periodId = 14; break }
            '隋*' { $periodId = 15; break }
            '唐*' { $periodId = 14; break }
            '五代*' { $periodId = 16; break }
            '北宋*' { $periodId = 17; break }
            '南宋*' { $periodId = 18; break }
            '遼*' { $periodId = 19; break }
            '西夏*' { $periodId = 19; break }
            '金*' { $periodId = 20; break }
            '元*' { $periodId = 21; break }
            '明*' { $periodId = 22; break }
            '清*' { $periodId = 23; break }
            default { $periodId = $null }
        }

        $typeId = $TypeMap[$row.類型]

        $materialIds = @()
        if ($row.資料類型) {
            $row.資料類型 -split ';' | ForEach-Object { $_.Trim() } | Where-Object { $_ -ne '' } | ForEach-Object {
                $mid = $MaterialMap[$_]
                if ($mid) { $materialIds += $mid }
            }
        }

        $sourceInsts      = Split-InstitutionField $row.來源
        $publisherInsts   = Split-InstitutionField $row.出版者
        $contributorInsts = Split-InstitutionField $row.貢獻者

        $allInsts = $sourceInsts + $publisherInsts + $contributorInsts
        foreach ($inst in $allInsts) {
            if (-not $allInstitutions.ContainsKey($inst)) {
                $allInstitutions[$inst] = $inst
            }
        }

        $sourceDesc = Get-NonInstitutionDesc $row.來源

        $allSources += [PSCustomObject]@{
            title_zh    = $row.題名
            creator     = if ($row.creator -and $row.creator -ne '–' -and $row.creator -ne '﹣') { $row.creator } else { $null }
            date        = if ($row.日期 -and $row.日期 -ne '–' -and $row.日期 -ne '﹣') { $row.日期 } else { $null }
            period_id   = $periodId
            type_id     = $typeId
            source_name = if ($row.來源 -and $row.來源 -ne '–' -and $row.來源 -ne '﹣') { $row.來源 } else { $null }
            identifier  = if ($row.識別碼 -and $row.識別碼 -ne '–' -and $row.識別碼 -ne '﹣') { $row.識別碼 } else { $null }
            source_url  = if ($row.來源網址 -and $row.來源網址 -ne '–' -and $row.來源網址 -ne '﹣') { $row.來源網址 } else { $null }
            language    = if ($row.語言 -and $row.語言 -ne '–' -and $row.語言 -ne '﹣') { $row.語言 } else { $null }
            description = if ($row.描述 -and $row.描述 -ne '–' -and $row.描述 -ne '﹣') { $row.描述 } else { $null }
            subject     = if ($row.主題 -and $row.主題 -ne '–' -and $row.主題 -ne '﹣') { $row.主題 } else { $null }
            era_range   = if ($row.年代範圍 -and $row.年代範圍 -ne '–' -and $row.年代範圍 -ne '﹣') { $row.年代範圍 } else { $null }
            geo_range   = if ($row.地理範圍 -and $row.地理範圍 -ne '–' -and $row.地理範圍 -ne '﹣') { $row.地理範圍 } else { $null }
            translator  = if ($row.翻譯者 -and $row.翻譯者 -ne '–' -and $row.翻譯者 -ne '﹣') { $row.翻譯者 } else { $null }
            relation    = if ($row.關聯 -and $row.關聯 -ne '–' -and $row.關聯 -ne '﹣') { $row.關聯 } else { $null }
            publisher   = if ($row.出版者 -and $row.出版者 -ne '–' -and $row.出版者 -ne '﹣') { $row.出版者 } else { $null }
            contributor = if ($row.貢獻者 -and $row.貢獻者 -ne '–' -and $row.貢獻者 -ne '﹣') { $row.貢獻者 } else { $null }
            access_date = if ($row.取得日期 -and $row.取得日期 -ne '–' -and $row.取得日期 -ne '﹣') { $row.取得日期 } else { $null }
            license_status  = if ($row.授權狀態 -and $row.授權狀態 -ne '–' -and $row.授權狀態 -ne '﹣') { $row.授權狀態 } else { $null }
            license_note    = if ($row.授權備註 -and $row.授權備註 -ne '–' -and $row.授權備註 -ne '﹣') { $row.授權備註 } else { $null }
            collection_status = if ($row.收錄狀態 -and $row.收錄狀態 -ne '–' -and $row.收錄狀態 -ne '﹣') { $row.收錄狀態 } else { $null }
            source_description = $sourceDesc
            notes       = if ($row.備註 -and $row.備註 -ne '–' -and $row.備註 -ne '﹣') { $row.備註 } else { $null }
            material_ids    = $materialIds
            source_insts    = $sourceInsts
            publisher_insts = $publisherInsts
            contributor_insts = $contributorInsts
        }
    }
}

Write-Host "總筆數: $totalRows"
Write-Host "已存在（跳過）: $skipCount"
Write-Host "（本批次）不重複機構數: $($allInstitutions.Count)"
Write-Host "（資料庫）現有機構數: $($ExistingInstIds.Count)"

$instList = $allInstitutions.Keys | Sort-Object
Write-Host "`n===== 本批次機構清單 ====="
$instList | ForEach-Object { Write-Host "  $_" }
Write-Host "==========================`n"

# === 建立機構名稱→ID 對照 ===
$instNameToId = @{}
$nextInstId = $MaxInstId + 1
foreach ($instName in $instList) {
    if ($ExistingInstIds.ContainsKey($instName)) {
        $instNameToId[$instName] = $ExistingInstIds[$instName]
    } else {
        $instNameToId[$instName] = $nextInstId
        $nextInstId++
    }
}
$maxNewInstId = $nextInstId - 1

if ($DryRun) {
    Write-Host "`n===== 乾執行摘要 ====="
    Write-Host "新機構數: $(($instList | Where-Object { -not $ExistingInstIds.ContainsKey($_) }).Count)"
    Write-Host "新 sources 數: $($allSources.Count)"
    Write-Host "（不產生 SQL 檔案）"
    exit 0
}

# === 產生 INSERT SQL ===
$sb = [System.Text.StringBuilder]::new()

$sb.AppendLine("-- ============================================================")
$sb.AppendLine("-- 東亞歷史權威史料庫 — 中國史料匯入 SQL（增量模式）")
$sb.AppendLine("-- 由 Import-ChinaToSupabase.ps1 v2 自動產生")
$sb.AppendLine("-- ============================================================")
$sb.AppendLine()

# --- 1. INSERT institutions (僅新機構) ---
$sb.AppendLine("-- === 1. 來源機構（僅新增者） ===")
$newInstCount = 0
foreach ($instName in $instList) {
    if (-not $ExistingInstIds.ContainsKey($instName)) {
        $newInstCount++
        $id = $instNameToId[$instName]
        $escapedName = $instName -replace "'", "''"
        $sb.AppendLine("INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES ($id, '$escapedName') ON CONFLICT (name_zh) DO NOTHING;")
    }
}
$sb.AppendLine()
$sb.AppendLine("SELECT setval('institutions_id_seq', $maxNewInstId);")
$sb.AppendLine()

# --- 2. INSERT sources ---
$sb.AppendLine("-- === 2. 主要史料 ===")
$sourceId = $MaxSourceId
$sourceMaterialRows = @()
$sourceInstRows = @()

foreach ($s in $allSources) {
    $sourceId++

    $cols = @('title_zh','creator','date','source_name','identifier','source_url',
              'language','description','subject','era_range','geo_range',
              'translator','relation','publisher','contributor','access_date',
              'license_status','license_note','collection_status','source_description','notes')
    $vals = foreach ($col in $cols) {
        $val = $s.$col
        if ($null -eq $val -or $val -eq '') { 'NULL' }
        else { "'$($val -replace "'","''")'" }
    }

    $periodVal = if ($s.period_id) { $s.period_id } else { 'NULL' }
    $typeVal   = if ($s.type_id)   { $s.type_id }   else { 'NULL' }

    $sql = "INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES ($sourceId, $($vals[0]), $($vals[1]), $($vals[2]), $periodVal, $typeVal, $($vals[3]), $($vals[4]), $($vals[5]), $($vals[6]), $($vals[7]), $($vals[8]), $($vals[9]), $($vals[10]), $($vals[11]), $($vals[12]), $($vals[13]), $($vals[14]), $($vals[15]), $($vals[16]), $($vals[17]), $($vals[18]), $($vals[19]), $($vals[20]), 'CN') ON CONFLICT (id) DO NOTHING;"
    $sb.AppendLine($sql)

    foreach ($mid in $s.material_ids) {
        $sourceMaterialRows += "($sourceId, $mid)"
    }
    foreach ($instName in $s.source_insts) {
        $iid = $instNameToId[$instName]
        $sourceInstRows += "($sourceId, $iid, 'source')"
    }
    foreach ($instName in $s.publisher_insts) {
        $iid = $instNameToId[$instName]
        $sourceInstRows += "($sourceId, $iid, 'publisher')"
    }
    foreach ($instName in $s.contributor_insts) {
        $iid = $instNameToId[$instName]
        $sourceInstRows += "($sourceId, $iid, 'contributor')"
    }
}

$sb.AppendLine()
$sb.AppendLine("SELECT setval('sources_id_seq', $sourceId) WHERE NOT EXISTS (SELECT 1 FROM sources WHERE id = $sourceId);")
$sb.AppendLine("SELECT setval('sources_id_seq', (SELECT COALESCE(MAX(id), 0) FROM sources));")
$sb.AppendLine()

# --- 3. source_materials ---
$sb.AppendLine("-- === 3. 史料←→資料類型 ===")
if ($sourceMaterialRows.Count -gt 0) {
    $sb.AppendLine("INSERT INTO source_materials (source_id, material_type_id) VALUES")
    for ($i = 0; $i -lt $sourceMaterialRows.Count; $i++) {
        $comma = if ($i -lt $sourceMaterialRows.Count - 1) { ',' } else { '' }
        $sb.AppendLine("  $($sourceMaterialRows[$i])$comma")
    }
    $sb.AppendLine("ON CONFLICT DO NOTHING;")
}
$sb.AppendLine()

# --- 4. source_institutions ---
$sb.AppendLine("-- === 4. 史料←→來源機構 ===")
$uniqueRows = $sourceInstRows | Select-Object -Unique
if ($uniqueRows.Count -gt 0) {
    for ($i = 0; $i -lt $uniqueRows.Count; $i += 50) {
        $batch = $uniqueRows[$i..[Math]::Min($i + 49, $uniqueRows.Count - 1)]
        $sb.AppendLine("INSERT INTO source_institutions (source_id, institution_id, role) VALUES")
        for ($j = 0; $j -lt $batch.Count; $j++) {
            $comma = if ($i + $j -lt $uniqueRows.Count - 1) { ',' } else { '' }
            $sb.AppendLine("  $($batch[$j])$comma")
        }
        $sb.AppendLine("ON CONFLICT DO NOTHING;")
    }
}
$sb.AppendLine()
$sb.AppendLine("-- === 完成 ===")

$content = $sb.ToString()
[System.IO.File]::WriteAllText($OutputSql, $content, [System.Text.UTF8Encoding]::new($true))

Write-Host "`nSQL 已寫入: $OutputSql"
Write-Host "Sources: $sourceId 筆（新增 $($allSources.Count) 筆）"
Write-Host "Institutions: $(($instNameToId.Keys | Where-Object { -not $ExistingInstIds.ContainsKey($_) }).Count) 個新機構"
Write-Host "Source-Material 關聯: $($sourceMaterialRows.Count) 筆"
Write-Host "Source-Institution 關聯: $($uniqueRows.Count) 筆"
Write-Host "=== 完成 ==="
