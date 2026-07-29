param(
    [string]$SourcesDir = "$PSScriptRoot\..\sources",
    [string]$OutputPath = "$PSScriptRoot\..\sources\metadata_合輯.xlsx"
)

Import-Module ImportExcel -Force

$csvFiles = Get-ChildItem -LiteralPath $SourcesDir -Recurse -Filter "metadata_*.csv" | Where-Object { $_.DirectoryName -notmatch 'sample' }

$sheets = @()
$allData = @()

foreach ($csv in $csvFiles) {
    $periodName = $csv.Directory.Name
    $sheetName = $periodName

    $data = Import-Csv -LiteralPath $csv.FullName
    $sheets += @{ Name = $sheetName; Data = $data; File = $csv.Name }
    $allData += $data | Select-Object *,
        @{N='時期';E={$sheetName}}
}

if (Test-Path -LiteralPath $OutputPath) { Remove-Item -LiteralPath $OutputPath -Force }

foreach ($s in $sheets) {
    $s.Data | Export-Excel -Path $OutputPath -WorksheetName $s.Name -AutoSize -Append
}

$allData | Export-Excel -Path $OutputPath -WorksheetName '總覽' -AutoSize -Append

Write-Host "✅ 合輯已產出：$OutputPath"
Write-Host "   工作表：" ($sheets.Name -join ', ')
