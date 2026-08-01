# Handoff — 2026-08-01（session 20）

## 專案階段
**階段十第一站：印度史料收錄＋Supabase 匯入全數完成（南亞開站）**

## 當前狀態
- 全庫 **1220 筆**（臺灣 516／中國 465／港澳 32／琉球 30／日本 40／韓國 40／東南亞 60／印度 37），sources max_id=1313、institutions max_id=357、periods 1–73
- 前端標題為動態計算（`apiAll` Range header 分批拉全量後 `${allPeriods.length} 時期 · ${allData.length} 筆`），**不需改 code**，瀏覽時自動顯示「73 時期 · 1220 筆」（docs/ 與 frontend/ 兩份 index.html 皆一致）

## 本 session 完成項目
- ✅ RDQ 訪談（1 輪 4 題）＋規格卡 confirmed：`rdq\RDQ-spec-南亞第一站印度-20260801.md`（印度一國優先／30–40 筆／含境外機構／採納 UNESCO 亮點＋分期提醒＋多語系查證 3 建議）
- ✅ 兩研究 agent 回報（印度本地官方典藏＋境外檔案/UNESCO 更正）：共約 42 筆候選 → 收錄 37 筆
- ✅ `sources\印度\metadata_印度.csv`（37 筆，IN-ST-01–37，末欄 region「SA」；22+1 欄）
- ✅ 複製 `sources\Import-IndiaToSupabase.ps1`（以 Import-SEAExtraToSupabase.ps1 為範本：CSV 清單→metadata_印度.csv、輸出→import_india_sources.sql、時期 switch 對應 68–73、region=SA）
- ✅ DryRun 驗證機構解析正確（26 個：23 新增＋3 既有）
- ✅ 產生 `sources\import_india_sources.sql` 並分批匯入 Supabase：periods 68–73（in-valley-vedic/in-mauryagupta/in-medieval/in-mughal/in-british/in-republic，region=SA，sort_order 71–76）、institutions 335–357（23 全新增）、sources 1277–1313、source_materials 74、source_institutions 74、setval 校正至 1313
- ✅ 驗證通過：全庫 sources 1220（SA 37）、periods 73、institutions 357、SA 時期分布 4/5/7/7/11/3、IN-ST-21 古德卜塔正確歸入 in-medieval
- ✅ `sources\印度\檢測報告_印度.md` 已撰寫（含 UNESCO 世界記憶 6 筆、多語系 13 種）
- ✅ AGENTS.md（精華表＋資料夾結構＋當前進度 1220 筆）／docs/progress.md（階段十第一站＋速查表新列）已更新

## 注意事項（承上 session）
- **匯入腳本批次切分 bug（已修）**：批次內逗號邏輯須用 `$j -lt $batch.Count - 1`（批次內最後一筆不加逗號）
- Supabase REST 單次查詢硬上限 1000 筆（db-max-rows=1000），查詢須用 Range header 分批
- `sources.id`／`periods.id`／`institutions.id` 皆 `GENERATED ALWAYS AS IDENTITY`，INSERT 需 `OVERRIDING SYSTEM VALUE`
- 執行 SQL 需分批（每批約 10–20 筆 INSERT），一次送 40 筆太長
- 印度 CSV 末欄 region=「SA」（非 SEA）；各國 code 前綴：in-*（印度）；識別碼 IN-ST-01–37

## 下一步（候選，待使用者確認）
1. 南亞續站：巴基斯坦／孟加拉／斯里蘭卡（《大史》Mahavamsa 2023 世界記憶可作斯里蘭卡首站亮點）／尼泊爾
2. 或開啟大洋洲／中東新區域
3. 開新站前先讀 `Import-IndiaToSupabase.ps1`（最新版範本）與 `handoff.md` 注意事項

## 同步狀態
- L1 本地：✅ AGENTS.md／handoff.md 已更新
- L2 GitHub：⚠️ 本 session 檔案尚未 commit＋push（rdq\RDQ-spec-南亞第一站印度-20260801.md、sources\印度\、sources\Import-IndiaToSupabase.ps1、sources\import_india_sources.sql、AGENTS.md、docs/progress.md、handoff.md）
- L3 Obsidian：❌ 未啟用（AGENTS.md 同步層級表 L3 未登記）

🕐 最後更新：2026-08-01（Agent @ $env:COMPUTERNAME）
