# ============================================================
# Import-Institutions.ps1
# 只匯入 source_institutions（命名對照 DB 現有機構）
# ============================================================
$ErrorActionPreference = 'Stop'

$CsvDir = Split-Path -Parent $PSCommandPath
$OutputSql = Join-Path $CsvDir "import_institutions.sql"

# === DB 現有機構對照表（2026-07-30 匯出） ===
$DbInstMap = @{
    'Hurst and Blackett' = 1
    'THDL' = 2
    'Wellcome Library' = 3
    '二二八事件紀念基金會' = 4
    '上海圖書館' = 5
    '大英圖書館' = 6
    '中央研究院' = 7
    '中央研究院歷史語言研究所' = 8
    '中央氣象局' = 9
    '中研院GIS' = 10
    '中研院史語所' = 11
    '中研院民族學研究所' = 12
    '中研院近史所' = 13
    '中研院近史所檔案館' = 14
    '中研院臺史所' = 15
    '中研院臺史所碑碣資料庫' = 16
    '中研院臺史所檔案館' = 17
    '中研院臺史所等' = 18
    '中研院臺灣史研究所' = 19
    '中研院臺灣史研究所碑碣資料庫' = 20
    '中研院歷史語言研究所檔案館' = 21
    '中國海關' = 22
    '中國海關總稅務司' = 23
    '中國第一歷史檔案館' = 24
    '文化部文化資產局' = 25
    '牛津大學出版社' = 26
    '日本內閣文庫' = 27
    '成功大學' = 28
    '成功大學考古學研究所' = 29
    '成功大學建築系' = 30
    '西班牙 / 菲律賓檔案館' = 31
    '宜蘭縣政府文化局' = 32
    '東京大學總合研究博物館' = 33
    '法國國家圖書館' = 34
    '南天書局' = 35
    '哈佛大學哈佛燕京圖書館' = 36
    '哈佛燕京圖書館' = 37
    '屏東縣政府文化處' = 38
    '美國耶魯大學出版社' = 39
    '美國國會圖書館' = 40
    '英國海軍水文局' = 41
    '香港大學圖書館' = 42
    '真理大學校史館' = 43
    '馬偕醫學院' = 44
    '國史館臺灣文獻館' = 45
    '國立自然科學博物館' = 46
    '國立故宮博物院' = 47
    '國立臺灣大學' = 48
    '國立臺灣大學人類學系' = 49
    '國立臺灣大學出版中心' = 50
    '國立臺灣大學校史館' = 51
    '國立臺灣大學圖書館' = 52
    '國立臺灣大學數位人文研究中心' = 53
    '國立臺灣大學醫學院附設醫院' = 54
    '國立臺灣大學醫學院' = 55
    '國立臺灣史前文化博物館' = 56
    '國立臺灣史前文化博物館南科考古館' = 57
    '國立臺灣史前文化博物館卑南遺址公園' = 58
    '國立臺灣博物館' = 59
    '國立臺灣圖書館' = 60
    '國立臺灣歷史博物館' = 61
    '國家人權博物館' = 62
    '國家文化資產網' = 63
    '國家圖書館' = 64
    '國家圖書館臺灣記憶' = 65
    '國際古氣候學期刊' = 66
    '基隆市文化局' = 67
    '婦女救援基金會' = 68
    '清國史館' = 69
    '荷蘭東印度公司' = 70
    '荷蘭海牙中央檔案館' = 71
    '荷蘭海牙皇家圖書館' = 72
    '荷蘭海牙國立中央檔案館' = 73
    '荷蘭海牙國家檔案館' = 74
    '荷蘭國家檔案館' = 75
    '新北市立十三行博物館' = 76
    '新北市立黃金博物館' = 77
    '漢珍數位' = 78
    '臺大數位人文中心' = 79
    '臺中市文化資產處' = 80
    '臺北市文獻委員會' = 81
    '臺北市立文獻委員會' = 82
    '臺南市文化局' = 83
    '臺南市政府文化局' = 84
    '臺灣基督長老教會總會' = 85
    '臺灣通史' = 86
    '臺灣銀行經濟研究室' = 87
    '遠流出版公司' = 88
    '澎湖縣文化局' = 89
    '聯經出版公司' = 90
    'C.E.S. 《被遺誤的台灣》' = 91
    '熱蘭遮城日誌' = 92
    '荷蘭海牙中央國家檔案館' = 93
    '英國國家檔案館' = 94
}

# === 別名對照（舊名稱 / 變體 → 現有 DB 機構 ID）===
$AliasMap = @{
    'VOC檔案' = 70                           # 荷蘭東印度公司
    '英國檔案館' = 94                         # 英國國家檔案館
    '故宮清宮檔案' = 47                        # 國立故宮博物院
    '海關檔案' = 22                            # 中國海關
    '海關報告' = 22                            # 中國海關
    '清代檔案' = 69                            # 清國史館
    '法國軍醫院檔案' = 34                       # 法國國家圖書館（近似）
    '中研院民族所數位典藏' = 12                 # 中研院民族學研究所
    '中研院歷史語言研究所' = 8                  # 中央研究院歷史語言研究所
    '菲律賓檔案館' = 31                         # 西班牙 / 菲律賓檔案館
    '宜蘭縣立蘭陽博物館' = 32                   # 宜蘭縣政府文化局（同體系）
    'Wellcome Library 等' = 3                   # Wellcome Library
    '臺灣教會公報社' = 85                        # 臺灣基督長老教會總會（同體系）
    '曹永和文教基金會' = 15                      # 中研院臺史所（曹永和曾任職）
    '東京大學' = 33                              # 東京大學總合研究博物館
    '前衛出版社' = 88                            # 遠流出版公司（近似）
    '海關醫報' = 22                              # 中國海關
    '國立臺灣大學、宋文薰' = 48                   # 國立臺灣大學
    '張光直、國立臺灣大學、美國耶魯大學' = 48      # 國立臺灣大學
    '連照美、宋文薰、國立臺灣大學' = 48            # 國立臺灣大學
    '張光直、國立臺灣大學' = 48                    # 國立臺灣大學
    '臧振華、中央研究院歷史語言研究所' = 8          # 中央研究院歷史語言研究所
    '國立臺灣大學人類學系張光直、國立臺灣大學、美國耶魯大學' = 49  # 國立臺灣大學人類學系
    '學術研究論文，數位版散見' = 64                 # 國家圖書館（近似）
    '學術文獻散見' = 64                             # 國家圖書館（近似）
    '學術出版社散見' = 64                            # 國家圖書館（近似）
}

# === 全形／半形 Dash 集合 ===
$DashPattern = '^[﹣－—–—―\-−‐]+$'

# === 非機構關鍵字 ===
$NonInstitutionSet = @(
    '方志', '檔案', '學術期刊', '學術研究', '學術論文', '學術專書',
    '學術報告', '學術出版', '學術文獻', '學術出版社', '學術研究文獻',
    '學術研究與訪談', '學術報告與論文', '學術報告與田野調查',
    '學術期刊論文', '學術期刊與出版社散見', '學術期刊與專書散見',
    '學術論文與專書', '學術論文與專書散見', '學術研究論文',
    '國際學術期刊', '國際學術期刊群', '國際古氣候學期刊',
    '地理學／考古學期刊', '地理學', '考古學期刊',
    '田野調查', '田野', '海外原件',
    '博物館', '各大學', '各大學地理系',
    '學術中譯本', '國際期刊論文', '古蹟調查報告', '古蹟調查',
    '原住民團體', '原件', '中譯本', '刊本', '散見',
    '國立臺灣圖書館等', '中研院臺史所等', '臺灣大學等',
    '臺灣歷史數位圖書館', '熱蘭遮城日誌',
    '五妃廟', '大天后宮', '開基武廟', '開基玉皇宮', '延平郡王祠'
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
        '圖書館', '博物館', '檔案館', '研究所', '大學', '學院',
        '文獻館', '書局', '出版社', '出版公司', '中心',
        '基金會', '委員會', '文化局', '文化處', '文化資產',
        '公報社', '氣象局', '數位', '檔案', '史料', '文獻',
        '國家', '國立', '市立', '縣立', '東印度公司',
        '政府', '總督府', '殖民', '行',
        '國會', '海關', '海軍', '軍醫院', '水文',
        '黃金博物館', '十三行博物館', '自然科學博物館',
        '史前文化博物館', '歷史博物館', '臺灣博物館',
        '臺史所', '近史所', '史語所', '人社中心',
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
    if ($name.Substring(0, $half) -eq $name.Substring($half)) { return $name.Substring(0, $half) }
    $third = [Math]::Floor($name.Length / 3)
    if ($third -ge 2 -and $name.Substring(0, $third) -eq $name.Substring($name.Length - $third)) { return $name.Substring(0, $name.Length - $third) }
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
    return ($result | Select-Object -Unique)
}

# === 主程式 ===
$CsvFiles = @(
    "史前時期\metadata_史前時期.csv",
    "荷西時期\metadata_荷西時期.csv",
    "明鄭時期\metadata_明鄭時期.csv",
    "清領時期\metadata_清領時期.csv",
    "日治時期\metadata_日治時期.csv"
)

$PeriodMap = @{'史前時期'=1; '荷西時期'=2; '明鄭時期'=3; '清領時期'=4; '日治時期'=5}
$TypeMap = @{'官方檔案文書'=1; '方志與輿圖'=2; '報刊與雜誌'=3; '人物傳記與家族史料'=4; '照片與影像'=5; '統計與調查資料'=6; '考古與物質文化'=7; '碑碣與實物刻文'=8; '口述歷史'=9; '產業與經濟實錄'=10; '教育與醫療史'=11; '自然與環境背景'=12}

$allSourceInstRows = @()
$sourceId = 0

foreach ($relPath in $CsvFiles) {
    $csvPath = Join-Path $CsvDir $relPath
    $periodDir = [System.IO.Path]::GetFileName((Split-Path $csvPath -Parent))
    Write-Host "讀取: $relPath"
    $data = Import-Csv $csvPath -Encoding UTF8
    foreach ($row in $data) {
        $sourceId++
        $periodName = switch ($periodDir) {
            '史前時期' { '史前時期' }
            '荷西時期' { '荷西時期' }
            '明鄭時期' { '明鄭時期' }
            '清領時期' { '清領時期' }
            '日治時期' { '日治時期' }
        }

        $sourceInsts      = Split-InstitutionField $row.來源
        $publisherInsts   = Split-InstitutionField $row.出版者
        $contributorInsts = Split-InstitutionField $row.貢獻者

        # 查 DB ID（先查主表，再查別名表）
        function Get-InstId {
            param([string]$n)
            $id = $DbInstMap[$n]
            if (-not $id) { $id = $AliasMap[$n] }
            return $id
        }
        foreach ($name in $sourceInsts) {
            $dbId = Get-InstId $name
            if ($dbId) { $allSourceInstRows += "($sourceId, $dbId, 'source')" }
            else { Write-Warning "未對應: source=$sourceId, name='$name'" }
        }
        foreach ($name in $publisherInsts) {
            $dbId = Get-InstId $name
            if ($dbId) { $allSourceInstRows += "($sourceId, $dbId, 'publisher')" }
            else { Write-Warning "未對應: source=$sourceId, publisher='$name'" }
        }
        foreach ($name in $contributorInsts) {
            $dbId = Get-InstId $name
            if ($dbId) { $allSourceInstRows += "($sourceId, $dbId, 'contributor')" }
            else { Write-Warning "未對應: source=$sourceId, contributor='$name'" }
        }
    }
}

$uniqueRows = $allSourceInstRows | Select-Object -Unique
Write-Host "Source-Institution 關聯: $($uniqueRows.Count) 筆 (去重後)"

# === 輸出 SQL ===
$sb = [System.Text.StringBuilder]::new()
$sb.AppendLine("-- Source-Institution 關聯（已對應 DB 機構 ID）")
if ($uniqueRows.Count -gt 0) {
    for ($i = 0; $i -lt $uniqueRows.Count; $i += 50) {
        $batch = $uniqueRows[$i..[Math]::Min($i + 49, $uniqueRows.Count - 1)]
        $isLastBatch = ($i + 50 -ge $uniqueRows.Count)
        $sb.AppendLine("INSERT INTO source_institutions (source_id, institution_id, role) VALUES")
        for ($j = 0; $j -lt $batch.Count; $j++) {
            if ($j -eq $batch.Count - 1) {
                $sb.AppendLine("  $($batch[$j])")
            } else {
                $sb.AppendLine("  $($batch[$j]),")
            }
        }
        $sb.AppendLine("ON CONFLICT DO NOTHING;")
    }
}
$sb.AppendLine("-- === 完成 ===")

$content = $sb.ToString()
[System.IO.File]::WriteAllText($OutputSql, $content, [System.Text.UTF8Encoding]::new($true))
Write-Host "SQL 已寫入: $OutputSql"
