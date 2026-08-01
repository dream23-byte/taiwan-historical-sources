# Handoff — 2026-08-01（session 15）

## 專案階段
**階段九第一站：琉球史料收錄＋Supabase 匯入全數完成；前端更新與修復完成，使用者已確認琉球正常顯示**

## 當前狀態
- 全庫 **1043 筆**（臺灣 516／中國 465／港澳 32／琉球 30），sources max_id=1136、institutions max_id=289、periods 1–38
- 前端 **38 時期 · 1043 筆**，client-side 分頁（每頁 50 筆＋頁碼導覽）、Range header 分批撈取，琉球篩選正常（使用者已驗收）
- `docs/`（GitHub Pages）與 `frontend/`（開發版）兩份 index.html **已驗證完全一致**

## 本 session 完成項目
- ✅ 琉球 30 筆：`sources\琉球\metadata_琉球.csv`＋`檢測報告_琉球.md`＋`Import-RyukyuToSupabase.ps1`＋`import_ryukyu_sources.sql`
- ✅ Supabase 匯入全數完成＋驗證通過：periods 33–38、institutions 272–289（18 新＋既有中國第一歷史檔案館）、sources 1107–1136、source_materials 34、source_institutions 96、setval 校正至 1136
- ✅ AGENTS.md 路線圖＋資料夾結構更新（含「階段九第一站之二：前端更新與修復」）
- ✅ 前端標題改動態「38 時期 · 1043 筆」
- ✅ client-side 分頁（PAGE_SIZE=50，篩選後自動回第 1 頁）
- ✅ 修復琉球未顯示：`limit` 參數無效 → 新增 `apiAll()` 用 `Range-Unit: items`＋`Range` header 分批拉取

## 注意事項（本 session 踩坑）
- **Supabase REST 單次查詢硬上限 1000 筆**（db-max-rows=1000），`?limit=5000` 無效（API 實測 Content-Range 只到 `0-999/*`），必須用 Range header 分批（每批 1000，`batch.length < 1000` 即結束）
- 匯入腳本批次切分 bug：source_institutions 超 50 筆拆兩段，首段尾行會多懸掛逗號（SyntaxError），執行 SQL 時需手動移除（港澳、琉球皆遇過）
- `sources.id`／`periods.id`／`institutions.id` 皆 `GENERATED ALWAYS AS IDENTITY`，INSERT 需 `OVERRIDING SYSTEM VALUE`；新增時期前先 `SELECT setval('periods_id_seq', (SELECT MAX(id) FROM periods))`
- 琉球 CSV 23 欄（末欄 region「琉球」）；「傳世文獻」→ T07

## 下一步（已與使用者確認方向）
1. **階段九第二站：日本**（優先 JACAR 亞洲歷史資料中心＋國會圖書館數位典藏等近代國家檔案，約 30–40 筆，與臺灣日治、琉球美治史料互補勾稽；再擴及其他時期／機構）
2. 之後：韓國 → 東南亞（越南、菲律賓優先）
3. 開新站前先讀 `Import-RyukyuToSupabase.ps1`（最新版範本）與 `handoff.md` 注意事項

## 同步狀態
- L1 本地：✅ AGENTS.md／handoff.md 已更新
- L2 GitHub：✅ 本 session 5 commits 已推（aaeb7d6 琉球收錄／91c80af 標題／4b732a3 limit／9ffcf4a 分頁／748c36b Range header）；handoff/AGENTS 本次更新待推
- L3 Obsidian：❌ 未啟用（AGENTS.md 同步層級表 L3 未登記）

🕐 最後更新：2026-08-01（Agent @ $env:COMPUTERNAME）
