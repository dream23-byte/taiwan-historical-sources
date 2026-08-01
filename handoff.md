# Handoff — 2026-08-01（session 17）

## 專案階段
**階段九第三站：韓國史料收錄＋Supabase 匯入全數完成**

## 當前狀態
- 全庫 **1123 筆**（臺灣 516／中國 465／港澳 32／琉球 30／日本 40／韓國 40），sources max_id=1216、institutions max_id=310、periods 1–51
- 前端標題仍顯示「38 時期 · 1043 筆」（日本站＋韓國站 session 皆未動前端，待下次更新為「51 時期 · 1123 筆」）

## 本 session 完成項目
- ✅ 韓國 40 筆：`sources\韓國\metadata_韓國.csv`＋`檢測報告_韓國.md`＋`Import-KoreaToSupabase.ps1`＋`sources\import_korea_sources.sql`
- ✅ Supabase 匯入全數完成＋驗證通過：periods 46–51（kr-ancient/goryeo/joseon/empire-colonial/republic-pre/republic-post，region=KR）、institutions 300–310（11 全新增：大韓民國政府・大韓民國臨時政府・首爾大學奎章閣韓國學研究院・海印寺・國史編纂委員會・國家記錄院・清州興德寺・朝鮮總督府・韓國文化財廳・韓國國立中央博物館・韓國學中央研究院）、sources 1177–1216、source_materials 56、source_institutions 92、setval 校正至 1216
- ✅ 6 時期分布：史前・古代5／高麗5／朝鮮12／大韓帝國・日治10／大韓民國前期4／大韓民國後期4
- ✅ 史料類型 7 類（T01 官方檔案文書 23 為主）；資料類型 4 類全覆蓋（文字36＋圖檔16＋影音3＋地圖1）；授權 ARR 23＋PD 17
- ✅ AGENTS.md 路線圖＋資料夾結構更新（含「階段九第三站：韓國史料收錄」）

## 注意事項（本 session 踩坑）
- **Supabase REST 單次查詢硬上限 1000 筆**（db-max-rows=1000），`?limit=5000` 無效，必須用 Range header 分批（每批 1000）
- 匯入腳本批次切分 bug：source_institutions 超 50 筆拆段，**非最後一段**的尾行會多懸掛逗號（SyntaxError），執行 SQL 時需手動移除（韓國 92 筆拆 2 段，第 1 段尾行 L187 `(1200, 304, 'source'),` 遇過，已修）
- `sources.id`／`periods.id`／`institutions.id` 皆 `GENERATED ALWAYS AS IDENTITY`，INSERT 需 `OVERRIDING SYSTEM VALUE`；新增時期前先 `SELECT setval('periods_id_seq', (SELECT MAX(id) FROM periods))`
- 韓國 CSV 25 欄（末欄 region「KR」）；「傳世文獻／考古」→ T07、碑碣→ T08；時代範圍開頭字決定 period（switch -Wildcard：韓國史前*/高麗*/朝鮮*/大韓帝國・日治*/大韓民國前期*/大韓民國後期*）
- 機構名「國史編纂委員會」「國家記錄院」等皆不含既有關鍵字，需在 Import-KoreaToSupabase.ps1 的 `$institutionKeywords` 加入
- 執行 SQL 需分批（每批約 10 筆 INSERT），一次送 40 筆會太長

## 下一步（已與使用者確認方向）
1. **前端更新**：標題統計改「51 時期 · 1123 筆」（docs/ 與 frontend/ 兩份 index.html 同步）
2. **階段九第四站：東南亞**（越南、菲律賓優先；region=SEA）
3. 開新站前先讀 `Import-KoreaToSupabase.ps1`／`Import-JapanToSupabase.ps1`（最新版範本）與 `handoff.md` 注意事項

## 同步狀態
- L1 本地：✅ AGENTS.md／handoff.md 已更新
- L2 GitHub：⚠️ 本 session 檔案尚未 commit＋push（含 sources/日本/、sources/韓國/、Import-JapanToSupabase.ps1、import_japan_sources.sql、Import-KoreaToSupabase.ps1、import_korea_sources.sql、AGENTS.md、handoff.md）
- L3 Obsidian：❌ 未啟用（AGENTS.md 同步層級表 L3 未登記）

🕐 最後更新：2026-08-01（Agent @ $env:COMPUTERNAME）
