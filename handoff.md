# Handoff — 2026-08-01（session 19）

## 專案階段
**階段九第四站之二：東南亞缺收國家補充＋Supabase 匯入全數完成**

## 當前狀態
- 全庫 **1183 筆**（臺灣 516／中國 465／港澳 32／琉球 30／日本 40／韓國 40／東南亞 60），sources max_id=1276、institutions max_id=334、periods 1–67
- 前端標題為動態計算（`apiAll` Range header 分批拉全量後 `${allPeriods.length} 時期 · ${allData.length} 筆`），**不需改 code**，瀏覽時自動顯示「67 時期 · 1183 筆」（docs/ 與 frontend/ 兩份 index.html 皆一致）

## 本 session 完成項目
- ✅ 前端標題確認：grep 驗證 docs/index.html 與 frontend/index.html（line 176/265/279）皆動態計算，無需改 code
- ✅ 東南亞補充 20 筆：`sources\東南亞\metadata_東南亞補充.csv`＋`檢測報告_東南亞補充.md`＋`Import-SEAExtraToSupabase.ps1`＋`sources\import_sea_sources_v2.sql`
- ✅ 國家分布：柬埔寨 5（KH-ST-01–05）＋寮國 4（LA-ST-01–04）＋馬來西亞 6（MY-ST-01–06）＋新加坡 5（SG-ST-01–05）
- ✅ Supabase 匯入全數完成＋驗證通過：periods 64–67（kh-cambodia 802–1953／la-laos 1353–1975／my-malaysia 1400–1957／sg-singapore 1819–1965，region=SEA，sort_order 67–70）、institutions 323–334（12 全新增：APSARA吳哥遺址管理局・吐斯廉屠殺博物館・佛教數位資源中心・柬埔寨國家檔案館・馬來西亞文化部文物局・馬來西亞國家圖書館・馬來西亞國家檔案館・琅勃拉邦皇宮國家博物館・新加坡國家圖書館委員會・新加坡國家檔案館・寮國國家圖書館・寮國資訊文化旅遊部）、sources 1257–1276、source_materials 20、source_institutions 40、setval 校正至 1276
- ✅ 4 時期分布：柬埔寨（吳哥王朝～近代）5／寮國（瀾滄王國～近代）4／馬來西亞（馬六甲蘇丹國～獨立）6／新加坡（開埠～獨立）5
- ✅ 史料類型 7 類（T01 官方檔案文書 6／T07 考古與物質文化・傳世文獻 8／T08 碑碣 2／T05 照片與影像 2／T03 報刊 1／T09 口述歷史 1）；資料類型 3 類（文字4＋圖檔13＋影音3，缺地圖）；授權 ARR 20
- ✅ UNESCO 世界記憶新納入：馬來紀年（2001）・漢都亞傳奇（2001）・帕尼傳奇（2017）・吐斯廉 S-21 檔案（2009）；另含吳哥窟（1992）・琅勃拉邦古城（1995）世界遺產
- ✅ AGENTS.md 路線圖＋資料夾結構更新（含「階段九第四站之二：東南亞缺收國家補充」）
- ✅ **AGENTS.md 瘦身重構（省 context）**：完整路線圖明細外移 `docs/progress.md`（新檔案），AGENTS.md 縮至約 70 行；新增 `sources/AGENTS.md`（匯入慣例：T 對照・M 對照・匯入流程・踩坑紀錄）；AGENTS.md 末段設 Lazy Loading 約定（docs/progress.md、sources/AGENTS.md 任務相關才讀）

## 注意事項（承上 session）
- **匯入腳本批次切分 bug（已修）**：批次內逗號邏輯須用 `$j -lt $batch.Count - 1`（批次內最後一筆不加逗號），Import-SEAExtraToSupabase.ps1 沿用修正版
- Supabase REST 單次查詢硬上限 1000 筆（db-max-rows=1000），查詢須用 Range header 分批
- `sources.id`／`periods.id`／`institutions.id` 皆 `GENERATED ALWAYS AS IDENTITY`，INSERT 需 `OVERRIDING SYSTEM VALUE`
- 執行 SQL 需分批（每批約 10–20 筆 INSERT），一次送 40 筆太長
- 東南亞補充 CSV 25 欄（末欄 region「SEA」）；各國 code：vn-*/ph-*/th-*/mm-*/id-*（主站）＋kh-*/la-*/my-*/sg-*（補充）

## 下一步（已與使用者確認方向）
1. 東南亞補齊完成（全區域 10 國／地區 60 筆、16 期），可開啟下一區域站（如南亞／大洋洲／中東）或暫告段落
2. 開新站前先讀 `Import-SEAtoSupabase.ps1`（最新版範本）與 `handoff.md` 注意事項
3. 前端無需改 code（標題動態顯示「67 時期 · 1183 筆」）

## 同步狀態
- L1 本地：✅ AGENTS.md／handoff.md 已更新（AGENTS.md 已瘦身重構）
- L2 GitHub：⚠️ 本 session 檔案尚未 commit＋push（含 sources/東南亞/、Import-SEAExtraToSupabase.ps1、import_sea_sources_v2.sql、docs/progress.md、sources/AGENTS.md、AGENTS.md、handoff.md）
- L3 Obsidian：❌ 未啟用（AGENTS.md 同步層級表 L3 未登記）

🕐 最後更新：2026-08-01（Agent @ $env:COMPUTERNAME）
