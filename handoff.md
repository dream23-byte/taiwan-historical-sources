# Handoff — 2026-08-01（session 13）

## 專案階段
**階段八第九站之後續：港澳史料收錄完成（32 筆）＋Supabase 匯入完成（periods 27–32＋institutions 249–271＋sources 1075–1106＋關聯全數就位）**

## 當前狀態
- 臺灣 516 筆 + 中國 465 筆 + **香港 18 筆 + 澳門 14 筆 = 1013 筆史料**已匯入 Supabase（sources max_id=1106，institutions max_id=271，periods 27–32）
- 港澳 CSV 位於 `sources\港澳\`：`metadata_香港.csv`（18 筆 HK-ST-01–18）、`metadata_澳門.csv`（14 筆 MO-ST-01–14），23 欄與中國檔同構（含 region「香港」/「澳門」）
- 港澳時期（region='HK'/'MO'，已標註西元年分）：
  - **香港英治(27，1841–1941)＝13**、**香港日佔(28，1941–1945)＝1**、**香港戰後(29，1945–1997)＝7**、**香港特區(30，1997–迄今)＝1**（註：1089/1090/1092 之 date 跨「迄今」者以 era_range 主段歸期）
  - **澳門葡治(31，1557–1999)＝12**、**澳門特區(32，1999–迄今)＝2**
- 港澳機構 23 個（id 249–271）：港 15（香港政府檔案處 258、香港政府 257、香港公共圖書館 254、香港歷史博物館 261、東華三院檔案館 251、香港天文台 255、香港房屋委員會 256、香港電影資料館 260、香港中文大學圖書館 253、古物古蹟辦事處 250、香港特別行政區政府 259、英國殖民地部 252）+ 澳 8（澳門檔案館 271、澳門文化局 264、澳門政府 265、澳門海關 266、澳門中央圖書館 263、澳門基金會 269、澳門博物館 270、天主教澳門教區 249、澳門特別行政區政府 267、澳門特別行政區政府印務局 268、葡萄牙東波塔國家檔案館 262）
- 港澳資料類型關聯：source_materials 47 筆、source_institutions 99 筆（HK/MO 全數正確對應）
- 授權全數 ARR；香港 9 類 T（T01 7 筆最重）、澳門 8 類 T；資料類型 4 類全覆蓋（含影音 T04＝電影資料館）

## 本 session 完成項目
- ✅ 撰寫 `metadata_香港.csv`（18 筆）＋`metadata_澳門.csv`（14 筆），23 欄一致（含 region 欄）
- ✅ 機構根網址全部 HTTP 200 驗證（港 15＋澳 11＋葡萄牙東波塔）
- ✅ 兩份檢測報告：`sources\港澳\檢測報告_香港.md`、`sources\港澳\檢測報告_澳門.md`
- ✅ `Import-HKMoToSupabase.ps1`（v1，仿中國 v2 模式，period id 依識別碼前綴 HK-/MO- 判定，region 同）正式執行產出 `import_hkmo_sources.sql`
- ✅ Supabase 插入：periods 27–32（`ON CONFLICT (id) DO NOTHING`）＋institutions 249–271（`ON CONFLICT (name_zh) DO NOTHING`）
- ✅ Supabase 插入：sources 1075–1106（32 筆，`OVERRIDING SYSTEM VALUE`）＋source_materials 47＋source_institutions 99（materials 一次成功；inst_links 因 1092 後多餘逗號 syntax error 拆兩段重跑）
- ✅ setval 校正（sources_id_seq→1106）＋驗證查詢全部通過（HK 18/MO 14；機構 23；materials 47；links 99；periods 6）

## 注意事項
- Supabase Free Tier 容量充裕（500 MB）
- `sources.id`、`periods.id`、`institutions.id` 均為 `GENERATED ALWAYS AS IDENTITY`，匯入需 `OVERRIDING SYSTEM VALUE`
- **新增時期前先檢查 periods_id_seq**：`SELECT setval('periods_id_seq', (SELECT MAX(id) FROM periods))`（過去曾落後造成 duplicate key）
- `import_hkmo_sources.sql` 為增量匯出檔（sources 段自第 44 行），重跑安全（ON CONFLICT＋identifier 去重）
- **港澳 CSV 資料行 23 欄**（含 region「香港」/「澳門」），與中國檔同構；史前臺灣 CSV 例外為 22 欄
- 「傳世文獻」→ T07（既有慣例）；T02 須用全名「方志與輿圖」
- 港澳時期 date/era_range 填「香港英治時期（…）」「澳門葡治時期（…）」等全稱；跨期史料（如澳門博物館、澳門虛擬圖書館）以 era_range 主段歸期
- 澳門特區公報正確網址為 `https://www.bo.dsaj.gov.mo/`（非 gs.gov.mo）；「葡萄牙國家檔案館」已統一為「葡萄牙東波塔國家檔案館」
- `websearch`（Exa API）於本 session 大部分時間不可用；澳門印務局網址是連線失敗時以僅有的一次成功 websearch 找到

## 下一步建議
1. **本次變更尚未 commit**（`sources\港澳\` 2 CSV＋2 檢測報告＋Import-HKMoToSupabase.ps1＋import_hkmo_sources.sql＋handoff.md），建議先 commit＋push 保存
2. 前端 GitHub Pages 標題連動顯示「32 時期 · 12 類型 · 1013 筆核心史料」（含港澳）
3. 階段九續站：**日本、韓國、琉球、東南亞**等區域（需新 region 代碼＋機構盤點）；港澳既有 6 期可視需求補充擴充
