# Handoff — 2026-08-01（session 21）

## 專案階段
**階段十第二站：巴基斯坦・孟加拉・斯里蘭卡史料收錄＋Supabase 匯入全數完成（南亞三國一次收編）**

## 當前狀態
- 全庫 **1273 筆**（臺灣 516／中國 465／港澳 32／琉球 30／日本 40／韓國 40／東南亞 60／印度 37／巴基斯坦 18／孟加拉 17／斯里蘭卡 18），sources max_id=1366、institutions max_id=397、periods 1–88
- 前端標題為動態計算（不需改 code），瀏覽時自動顯示「88 時期 · 1273 筆」
- 南亞 SA 區域累計 **90 筆**（印度 37＋三國 53）

## 本 session 完成項目
- ✅ 研究 agent 回報完成（巴基斯坦＋孟加拉候選 19+17；斯里蘭卡 18，含《大史》2023 登錄細節更正：佩拉德尼亞大學圖書館貝葉善本特藏，登錄號 Accession No. 277587）
- ✅ 三國 CSV 已建立：`sources\巴基斯坦\metadata_巴基斯坦.csv`（18 筆，PK-ST-01–18）／`sources\孟加拉\metadata_孟加拉.csv`（17 筆，BD-ST-01–17）／`sources\斯里蘭卡\metadata_斯里蘭卡.csv`（18 筆，LK-ST-01–18）；末欄 region「SA」
- ✅ 複製並修改 `sources\Import-SouthAsiaToSupabase.ps1`（以 Import-IndiaToSupabase.ps1 為範本）：CsvDir 指向 sources 根、allCsvFiles 含三國子目錄、時期 switch 對應 74–88（15 期）、region=SA、輸出 import_south_asia_sources.sql
- ✅ DryRun＋正式執行產生 `sources\import_south_asia_sources.sql`（sources 1366 筆，新增 53；機構 40 新＋4 既有沿用）
- ✅ 分批匯入 Supabase：periods 74–88（巴基斯坦 5 期 pk-*/孟加拉 5 期 bd-*/斯里蘭卡 5 期 lk-*，region=SA，sort_order 77–91）、institutions 358–397（40 全新增）、sources 1314–1366、source_materials 98、source_institutions 105、setval 校正至 1366
- ✅ 驗證通過：全庫 1273（SA 90）、PK 18／BD 17／LK 18、periods 88、institutions 397、時期分布 PK 3/1/2/5/7・BD 3/1/3/3/7・LK 6/1/4/5/2
- ✅ 三份檢測報告已撰寫：`sources\巴基斯坦\檢測報告_巴基斯坦.md`／`sources\孟加拉\檢測報告_孟加拉.md`／`sources\斯里蘭卡\檢測報告_斯里蘭卡.md`
- ✅ AGENTS.md（精華表＋資料夾結構＋當前進度 1273 筆）／docs/progress.md（階段十第二站＋速查表三列）已更新

## 注意事項（承上 session）
- **巴基斯坦 CSV 實際 18 筆（PK-ST-01–18）**，非 handoff 先前的「19」；三國總計 53 筆
- **匯入腳本批次切分 bug（已修）**：批次內逗號邏輯須用 `$j -lt $batch.Count - 1`（批次內最後一筆不加逗號）
- Supabase REST 單次查詢硬上限 1000 筆（db-max-rows=1000），查詢須用 Range header 分批
- `sources.id`／`periods.id`／`institutions.id` 皆 `GENERATED ALWAYS AS IDENTITY`，INSERT 需 `OVERRIDING SYSTEM VALUE`
- 執行 SQL 需分批（每批約 15–18 筆 INSERT）
- 三國 CSV 末欄 region=「SA」；各國 code 前綴 pk-*/bd-*/lk-*；識別碼 PK/BD/LK-ST-01–18
- 三國 CSV 的「年代範圍」前綴全部對應 switch（巴基斯坦 74–78／孟加拉 79–83／斯里蘭卡 84–88）；PK-ST-06 國家博物館跨全史走 period NULL（與印度站 IN-ST-04 先例一致）

## 下一步（候選，待使用者確認）
1. 南亞續站：尼泊爾（階段十最後一國；可從檔案來源盤點清單.md 第十四體系找線索）／或南亞補站（不丹・馬爾地夫・阿富汗）
2. 或開啟大洋洲／中東新區域
3. 開新站前先讀 `Import-SouthAsiaToSupabase.ps1`（最新版範本，含三國多 CSV 批次處理）與 `handoff.md` 注意事項

## 同步狀態
- L1 本地：✅ AGENTS.md／handoff.md 已更新
- L2 GitHub：⚠️ 本 session 檔案尚未 commit＋push（sources\巴基斯坦\・sources\孟加拉\・sources\斯里蘭卡\・sources\Import-SouthAsiaToSupabase.ps1・sources\import_south_asia_sources.sql・AGENTS.md・docs/progress.md・handoff.md）
- L3 Obsidian：❌ 未啟用（AGENTS.md 同步層級表 L3 未登記）

🕐 最後更新：2026-08-01（Agent @ $env:COMPUTERNAME）
