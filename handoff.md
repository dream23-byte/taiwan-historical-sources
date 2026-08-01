# Handoff — 2026-08-01（session 14）

## 專案階段
**階段九第一站：琉球史料收錄完成（30 筆）＋Supabase 匯入完成（periods 33–38＋institutions 272–289＋sources 1107–1136＋關聯全數就位）**

## 當前狀態
- 臺灣 516 筆 + 中國 465 筆 + 港澳 32 筆 + **琉球 30 筆 = 1043 筆史料**已匯入 Supabase（sources max_id=1136，institutions max_id=289，periods 33–38）
- 琉球 CSV：`sources\琉球\metadata_琉球.csv`（30 筆 RY-ST-01–30），23 欄與中國/港澳同構（末欄 region「琉球」）
- 琉球時期（region='RY'，已標註西元年分）：
  - **古琉球・三山時代(33，～1429)＝3**、**第一尚氏王朝(34，1429–1469)＝2**、**第二尚氏王朝(35，1469–1879)＝11**、**沖繩縣・日本統治(36，1879–1945)＝7**、**琉球政府・美治時期(37，1945–1972)＝6**、**沖繩返還後(38，1972–迄今)＝1**
- 琉球機構 19 個（18 新＋中國第一歷史檔案館既有，institutions 272–289 新增 18 個）
- 琉球資料類型關聯：source_materials 34 筆、source_institutions 96 筆；授權全 ARR；T 類型 10 類（T01 官方檔案 12 筆最重）、M01–M04 全覆蓋

## 本 session 完成項目
- ✅ 機構網址驗證（13 個候選全數確認，其中沖繩縣立博物館・美術館正確網址為 okimu.jp、那霸市歷史博物館為 rekishi-archive.city.naha.okinawa.jp）
- ✅ 撰寫 `metadata_琉球.csv`（30 筆），含《歷代寶案》校訂本・譯注本（ryuoki-archive.jp 數位全文公開）等琉球核心史料
- ✅ 檢測報告：`sources\琉球\檢測報告_琉球.md`
- ✅ `Import-RyukyuToSupabase.ps1`（v1，複製港澳版調整 period 33–38、region=RY、CSV 檔名；補機構關鍵字「公文書/縣廳/教育委員會/編集委員會/調查會/空軍」）正式執行產出 `import_ryukyu_sources.sql`
- ✅ Supabase 插入：periods 33–38（`ON CONFLICT (id) DO NOTHING`）＋institutions 272–289（18 個）＋sources 1107–1136（30 筆）＋source_materials 34＋source_institutions 96
- ✅ setval 校正（institutions→289、sources→1136）＋驗證查詢全部通過（RY sources 30／機構 18／materials 34／links 96／periods 6）

## 注意事項
- Supabase Free Tier 容量充裕（500 MB）
- `sources.id`、`periods.id`、`institutions.id` 均為 `GENERATED ALWAYS AS IDENTITY`，匯入需 `OVERRIDING SYSTEM VALUE`
- **新增時期前先檢查 periods_id_seq**：`SELECT setval('periods_id_seq', (SELECT MAX(id) FROM periods))`
- **匯入腳本批次切分有已知小 bug**：source_institutions 超 50 筆會拆兩段，首段尾行會多懸掛逗號（SyntaxError），執行 SQL 時需手動移除該逗號再跑（港澳、琉球皆遇過）
- `import_ryukyu_sources.sql` 為增量匯出檔，重跑安全（ON CONFLICT＋identifier 去重）
- 琉球 CSV 資料行 23 欄（末欄 region「琉球」）；「傳世文獻」→ T07（既有慣例）
- 琉球時期 date/era_range 填「古琉球時期（…）」「第二尚氏王朝（…）」「沖繩縣・日本統治（…）」等全稱；跨期史料（如沖繩縣史、報紙）以 era_range 主段歸期
- 琉球機構常用關鍵字含「公文書」等，若未來新增機構未被捕獲，比對 `Is-ValidInstitution` 關鍵字清單

## 下一步建議
1. **本次變更尚未 commit**（`sources\琉球\` 1 CSV＋1 檢測報告＋Import-RyukyuToSupabase.ps1＋import_ryukyu_sources.sql＋handoff.md），建議先 commit＋push 保存
2. 前端 GitHub Pages 標題連動顯示「38 時期 · 12 類型 · 1043 筆核心史料」（含琉球）
3. 階段九續站：**日本、韓國、東南亞**；日本可優先（範圍大，先做近代國家檔案等核心機構），韓國次之，東南亞可從與臺灣/中國關係密切的越南、菲律賓開始
