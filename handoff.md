# Handoff — 2026-08-01（session 18）

## 專案階段
**階段九第四站：東南亞史料收錄＋Supabase 匯入全數完成**

## 當前狀態
- 全庫 **1163 筆**（臺灣 516／中國 465／港澳 32／琉球 30／日本 40／韓國 40／東南亞 40），sources max_id=1256、institutions max_id=322、periods 1–63
- 前端標題仍顯示「38 時期 · 1043 筆」（日本／韓國／東南亞三站 session 皆未動前端，待下次更新為「63 時期 · 1163 筆」）

## 本 session 完成項目
- ✅ 東南亞 40 筆：`sources\東南亞\metadata_東南亞.csv`＋`檢測報告_東南亞.md`＋`Import-SEAtoSupabase.ps1`＋`sources\import_sea_sources.sql`
- ✅ 國家分布：越南 20（VN-ST-01–20）＋菲律賓 15（PH-ST-01–15）＋印尼 2／泰國 2／緬甸 1（SEA-ST-01–05）
- ✅ Supabase 匯入全數完成＋驗證通過：periods 52–63（vn-ancient/lytranle/nguyen/french-indochina/modern、ph-precolonial/spanish/american/republic、th-thailand、mm-myanmar、id-indonesia，region=SEA，sort_order 55–66）、institutions 311–322（12 全新增：永嚴寺・印尼國家檔案館・法屬印度支那總督府・泰國國家檔案館・菲國政府・菲國家圖書館・菲國家檔案館・越南政府・越南國家歷史博物館・越南國家檔案局・越南漢喃研究院・緬甸國家檔案館）、sources 1217–1256、source_materials 51、source_institutions 87、setval 校正至 1256
- ✅ 12 時期分布：越南古代3／李陳黎朝5／阮朝6／法屬印度支那3／越南現代3／菲國前殖民2／西屬5／美屬3／菲國共和5／泰國2／緬甸1／印尼2
- ✅ 史料類型 11 類（T01 官方檔案文書 17 為主，缺 T10/T12）；資料類型 4 類全覆蓋（文字28＋圖檔17＋地圖3＋影音3）；授權 ARR 40
- ✅ AGENTS.md 路線圖＋資料夾結構更新（含「階段九第四站：東南亞史料收錄」）

## 注意事項（本 session 踩坑）
- **匯入腳本批次切分 bug（已修）**：Import-SEAtoSupabase.ps1 的 source_institutions 批次內逗號邏輯原本用 `$i + $j -lt $uniqueRows.Count - 1`，當拆成 2 段時**第一段尾行會懸掛逗號**（SyntaxError）。已改為 `$j -lt $batch.Count - 1`（批次內最後一筆不加逗號），腳本與 SQL 皆為修正版
- Supabase REST 單次查詢硬上限 1000 筆（db-max-rows=1000），查詢須用 Range header 分批
- `sources.id`／`periods.id`／`institutions.id` 皆 `GENERATED ALWAYS AS IDENTITY`，INSERT 需 `OVERRIDING SYSTEM VALUE`
- 東南亞 CSV 25 欄（末欄 region「SEA」）；「傳世文獻／考古」→ T07、碑碣→ T08、口述→ T09、照片→ T05、統計→ T06；時代範圍開頭字決定 period（switch -Wildcard）
- 執行 SQL 需分批（每批約 10–20 筆 INSERT），一次送 40 筆太長

## 下一步（已與使用者確認方向）
1. **前端更新**：標題統計改「63 時期 · 1163 筆」（docs/ 與 frontend/ 兩份 index.html 同步，client-side 分頁與 Range 分批拉取已支援）
2. 其餘東南亞國家補充（越南 20 為主已足，可依需求補寮國／柬埔寨／馬來西亞／新加坡等）或開啟下一區域站（如南亞／大洋洲）
3. 開新站前先讀 `Import-SEAtoSupabase.ps1`（最新版範本）與 `handoff.md` 注意事項

## 同步狀態
- L1 本地：✅ AGENTS.md／handoff.md 已更新
- L2 GitHub：⚠️ 本 session 檔案尚未 commit＋push（含 sources/東南亞/、Import-SEAtoSupabase.ps1、import_sea_sources.sql、AGENTS.md、handoff.md）
- L3 Obsidian：❌ 未啟用（AGENTS.md 同步層級表 L3 未登記）

🕐 最後更新：2026-08-01（Agent @ $env:COMPUTERNAME）
