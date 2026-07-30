# ============================================================
# Import-ToSupabase.ps1 v2
# 將 5 個 CSV 匯入 Supabase（產生 INSERT SQL）
# Metadata v1.3 → 正規化資料庫
# ============================================================

$ErrorActionPreference = 'Stop'

# === 設定 ===
$OutputDir   = Split-Path -Parent $PSCommandPath
$OutputSql   = Join-Path $OutputDir "import_sources.sql"
$CsvDir      = $OutputDir

# === 時期對照 ===
$PeriodMap = @{
    '史前時期' = 1
    '荷西時期' = 2
    '明鄭時期' = 3
    '清領時期' = 4
    '日治時期' = 5
}

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
}

# === M 分類對照 ===
$MaterialMap = @{'文字'=1; '圖檔'=2; '地圖'=3; '影音'=4}

# === 全形／半形 Dash 集合（CSV 空值標記） ===
$DashPattern = '^[﹣－—–—―\-−‐]+$'

# === 非機構關鍵字（精準比對用） ===
$NonInstitutionSet = @(
    '方志', '檔案', '學術期刊', '學術研究', '學術論文', '學術專書'
    '學術報告', '學術出版', '學術文獻', '學術出版社', '學術研究文獻'
    '學術研究與訪談', '學術報告與論文', '學術報告與田野調查'
    '學術期刊論文', '學術期刊與出版社散見', '學術期刊與專書散見'
    '學術論文與專書', '學術論文與專書散見', '學術研究論文'
    '國際學術期刊', '國際學術期刊群', '國際古氣候學期刊'
    '地理學／考古學期刊', '地理學', '考古學期刊'
    '田野調查', '田野調查', '田野', '海外原件'
    '博物館', '各大學', '各大學地理系'
    '學術中譯本', '國際期刊論文', '古蹟調查報告', '古蹟調查'
    '原住民團體', '原件', '中譯本', '刊本', '散見'
    '國立臺灣圖書館等', '中研院臺史所等', '中研院臺史所等'
    '臺灣大學等', '臺灣歷史數位圖書館', '熱蘭遮城日誌'
    '五妃廟', '大天后宮', '開基武廟', '開基玉皇宮', '延平郡王祠'
)

# === 機構名稱正規化 ===
function Normalize-InstitutionName {
    param([string]$raw)
    if ([string]::IsNullOrWhiteSpace($raw)) { return $null }
    $name = $raw.Trim()

    # 移除括號內註解（支援全形半形括號）
    $name = $name -replace '[（(][^）)]*[）)]', ''
    $name = $name -replace '[（(][^）)]*$', ''  # 殘留開括號（如 「（刊本」）
    $name = $name.Trim()
    if ([string]::IsNullOrWhiteSpace($name)) { return $null }

    # 排除只剩 dash 的
    if ($name -match $DashPattern) { return $null }

    # 排除過短的殘留
    if ($name.Length -le 2) { return $null }

    return $name
}

# === 判斷是否為合法機構 ===
function Is-ValidInstitution {
    param([string]$name)
    if ([string]::IsNullOrWhiteSpace($name)) { return $false }
    if ($name.Length -le 1) { return $false }
    if ($name -match $DashPattern) { return $false }

    # 精準比對非機構清單
    if ($NonInstitutionSet -contains $name) { return $false }

    # 包含頓號且無機構關鍵字 → 人名清單
    $institutionKeywords = @(
        '圖書館', '博物館', '檔案館', '研究所', '大學', '學院'
        '文獻館', '書局', '出版社', '出版公司', '中心'
        '基金會', '委員會', '文化局', '文化處', '文化資產'
        '公報社', '氣象局', '數位', '檔案', '史料', '文獻'
        '國家', '國立', '市立', '縣立', '東印度公司'
        '政府', '總督府', '殖民', '行'
        '國會', '海關', '海軍', '軍醫院', '水文'
        '黃金博物館', '十三行博物館', '自然科學博物館'
        '史前文化博物館', '歷史博物館', '臺灣博物館'
        '臺史所', '近史所', '史語所', '人社中心'
        'GIS', 'THDL', 'Wellcome'
    )
    $hasKw = ($institutionKeywords | Where-Object { $name -match [regex]::Escape($_) }).Count -gt 0

    # 如果包含頓號但無機構關鍵字 → 人名
    if ($name -match '[、,]' -and -not $hasKw) { return $false }

    # 純英數短字串（如 "Hurst and Blackett"）
    if ($name -match '^[a-zA-Z0-9 &.]+$' -and $name.Length -ge 3) { return $true }

    return $hasKw
}

# === 去重複拼接名稱：中研院臺史所中研院臺史所 → 中研院臺史所 ===
function Remove-DuplicateConcat {
    param([string]$name)
    if ($name.Length -le 6) { return $name }
    # 找前半部 = 後半部的模式
    $half = [Math]::Floor($name.Length / 2)
    if ($name.Substring(0, $half) -eq $name.Substring($half)) {
        return $name.Substring(0, $half)
    }
    # 找前面的三分之一 = 後面的三分之一
    $third = [Math]::Floor($name.Length / 3)
    if ($third -ge 2 -and $name.Substring(0, $third) -eq $name.Substring($name.Length - $third)) {
        return $name.Substring(0, $name.Length - $third)
    }
    return $name
}

# === 拆解機構欄位 ===
function Split-InstitutionField {
    param([string]$field)
    $result = @()
    if ([string]::IsNullOrWhiteSpace($field)) { return $result }
    $field -split ';' | ForEach-Object { $_.Trim() } | Where-Object { $_ -ne '' } | ForEach-Object {
        # 先正規化（去括號），再去 dash 前後殘留
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
    return ($result | Select-Object -Unique)
}

# === 取得非機構描述文字 ===
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

# === 主程式 ===
Write-Host "=== 開始匯入 5 個 CSV ==="

$CsvFiles = @(
    "史前時期\metadata_史前時期.csv",
    "荷西時期\metadata_荷西時期.csv",
    "明鄭時期\metadata_明鄭時期.csv",
    "清領時期\metadata_清領時期.csv",
    "日治時期\metadata_日治時期.csv"
)

$allSources = @()
$allInstitutions = @{}

$totalRows = 0
foreach ($relPath in $CsvFiles) {
    $csvPath = Join-Path $CsvDir $relPath
    $periodDir = [System.IO.Path]::GetFileName((Split-Path $csvPath -Parent))

    Write-Host "讀取: $relPath"
    $data = Import-Csv $csvPath -Encoding UTF8
    $totalRows += $data.Count

    foreach ($row in $data) {
        $periodName = switch ($periodDir) {
            '史前時期' { '史前時期' }
            '荷西時期' { '荷西時期' }
            '明鄭時期' { '明鄭時期' }
            '清領時期' { '清領時期' }
            '日治時期' { '日治時期' }
        }
        $periodId = $PeriodMap[$periodName]
        $typeId   = $TypeMap[$row.類型]

        # M-types
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
Write-Host "不重複機構數: $($allInstitutions.Count)"

# === 輸出機構清單供檢視 ===
$instList = $allInstitutions.Keys | Sort-Object
Write-Host "`n===== 機構清單 ====="
$instList | ForEach-Object { Write-Host "  $_" }
Write-Host "=====================`n"

# === 產生 INSERT SQL ===
$sb = [System.Text.StringBuilder]::new()

$sb.AppendLine("-- ============================================================")
$sb.AppendLine("-- 台灣歷史權威史料資料庫 — 資料匯入 SQL")
$sb.AppendLine("-- 由 Import-ToSupabase.ps1 v2 自動產生")
$sb.AppendLine("-- ============================================================")
$sb.AppendLine()

# --- 1. INSERT institutions ---
$sb.AppendLine("-- === 1. 來源機構 ===")
$instId = 0
$instNameToId = @{}
foreach ($instName in $instList) {
    $instId++
    $escapedName = $instName -replace "'", "''"
    $sb.AppendLine("INSERT INTO institutions (id, name_zh) VALUES ($instId, '$escapedName');")
    $instNameToId[$instName] = $instId
}
$sb.AppendLine()
$sb.AppendLine("SELECT setval('institutions_id_seq', $instId);")
$sb.AppendLine()

# --- 2. INSERT sources ---
$sb.AppendLine("-- === 2. 主要史料 ===")
$sourceId = 0
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

    $sql = "INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES ($sourceId, $($vals[0]), $($vals[1]), $($vals[2]), $periodVal, $typeVal, $($vals[3]), $($vals[4]), $($vals[5]), $($vals[6]), $($vals[7]), $($vals[8]), $($vals[9]), $($vals[10]), $($vals[11]), $($vals[12]), $($vals[13]), $($vals[14]), $($vals[15]), $($vals[16]), $($vals[17]), $($vals[18]), $($vals[19]), $($vals[20]));"
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
$sb.AppendLine("SELECT setval('sources_id_seq', $sourceId);")
$sb.AppendLine()

# --- 3. source_materials ---
$sb.AppendLine("-- === 3. 史料←→資料類型 ===")
if ($sourceMaterialRows.Count -gt 0) {
    $sb.AppendLine("INSERT INTO source_materials (source_id, material_type_id) VALUES")
    for ($i = 0; $i -lt $sourceMaterialRows.Count; $i++) {
        $comma = if ($i -lt $sourceMaterialRows.Count - 1) { ',' } else { ';' }
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
            $comma = if ($i + $j -lt $uniqueRows.Count - 1) { ',' } else { ';' }
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
Write-Host "Sources: $sourceId 筆"
Write-Host "Institutions: $instId 個"
Write-Host "Source-Material 關聯: $($sourceMaterialRows.Count) 筆"
Write-Host "Source-Institution 關聯: $($uniqueRows.Count) 筆"
Write-Host "=== 完成 ==="
