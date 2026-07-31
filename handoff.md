# Handoff — 2026-07-31（session 12）

## 專案階段
**階段八第十站完成：中國 465 筆 source_url 健康檢查（64 異常全數處置）＋Supabase 同步驗證完成（44 筆差異全數更新，CSV↔DB 0 差異）**

## 當前狀態
- 臺灣 516 筆 + 中國 465 筆 = **981 筆史料**已匯入 Supabase（sources max_id=1074，institutions max_id=248）
- 中國 CSV 現有 19 份：**史前 28**（21＋7 新） + 夏商周 17 + 秦 15 + 漢 20 + 魏晉南北朝 32 + 隋 9 + 唐 24 + 五代十國 11 + 北宋 24 + 南宋 24 + **遼 14＋西夏 6（metadata_中國遼.csv）** + **金 24（metadata_中國金.csv）** + **元 26（metadata_中國元.csv）** + **元補充 18（metadata_中國元_補充.csv）** + **明 32（metadata_中國明.csv）** + **清 32（metadata_中國清.csv）** + **中華民國 41（metadata_中國中華民國.csv）** + **中華人民共和國 62（metadata_中國中華人民共和國.csv）**
- 中國時期（region='CN'，均已標註西元年分）：
  - **中國史前(24，約前2070年以前)＝10**、夏(7，約前2070–前1600)＝1、商(8，約前1600–前1046)＝10、西周(9，前1046–前771)＝2、東周/春秋戰國(10，前770–前256)＝6
  - 秦(11，含楚漢相爭，前221–前202)＝15、漢(12，西漢＋新＋東漢，前202–220)＝20、魏晉南北朝(13，220–589)＝32
  - 隋(15，581–618)＝9、唐(14，618–907)＝24、五代十國(16，907–960)＝11
  - 北宋(17，960–1127)＝24、南宋(18，1127–1279)＝24、遼(19，含西夏，916–1227)＝**26**、金(20，1115–1234)＝**24**、元(21，1271–1368)＝**44**、明(22，1368–1644)＝**32**、清(23，1644–1912)＝**32**
  - **中華民國(25，1912–1949)＝41**、**中華人民共和國(26，1949–迄今)＝62**
- 臺灣時期（region='TW'）：史前(1，**已改名「臺灣史前（1624年以前）」**)、荷西(2)、明鄭(3)、清領(4)、日治(5)、戰後(6)（已標註西元年分）

## 本 session 完成項目
- ✅ **民國/共和國檢測報告產出**：`sources\中國\檢測報告_中華民國.md`（41 筆，11/12 類缺 T02）、`sources\中國\檢測報告_中華人民共和國.md`（62 筆，12/12 類全覆蓋）
- ✅ **Supabase 匯入驗證完成**：以 REST API 下載 DB 全部 465 筆 CN source_url 與 CSV 比對，找到 **44 筆差異**（皆為本次健康檢查已改、DB 未同步之網址，含 mh.sinica.edu.tw→www.mh、shac.net.cn https→http、csmb→chinajiandu、sckg、hbswwkg 等）
- ✅ **44 筆 DB source_url 全部更新**（以 CSV 為準，RETURNING 驗證 44/44 成功），複查 **CSV↔DB 0 差異**
- ✅ 比對工具：`csv_url_map.tsv`（CSV 465 筆）→ `sync_diff.sql`（44 筆 UPDATE）已存 `C:\Users\myaly\AppData\Local\Temp\opencode\`

## 注意事項
- Supabase Free Tier 容量充裕（500 MB）
- `sources.id`、`periods.id`、`institutions.id` 均為 `GENERATED ALWAYS AS IDENTITY`，匯入需 `OVERRIDING SYSTEM VALUE`
- **periods_id_seq 曾落後**（max_id=22 但 seq 停在 12），插入前已用 setval 修正；未來新增時期若遇 duplicate key，先 `SELECT setval('periods_id_seq', (SELECT MAX(id) FROM periods))`
- **他方 Agent 無本地 CSV**（應在另一台電腦作業）；若他方機器同步 repo，需留意 `import_china_sources.sql` 含全部增量
- `import_china_sources.sql` 為增量匯出檔（現含 965–1074），重跑安全（ON CONFLICT＋identifier 去重）
- `Import-ChinaToSupabase.ps1` 全量模式已具 identifier 去重：會自動跳過 DB 中已存在之識別碼，可安心重跑
- **史前 CSV 為 22 欄（無列尾時代欄）且 LF 行尾**；其餘中國 CSV 資料行 23 欄（行尾格式 `,"<時代>")`）
- 所有中國資料 `region='CN'`
- 西夏史料以「西夏」為時代字首歸入 period 19（遼，含西夏）；「明」→22；「清」→23；「舊石器/新石器/史前」→24（跨時代「舊石器時代–/新石器時代–」→NULL）；「中華民國」→25；「中華人民共和國」→26
- **T02 類型須用全名「方志與輿圖」**（CSV 若寫「方志」會 mapping 失敗得 NULL）；「傳世文獻」→ T07（既有慣例）
- 網站所有文字敘述以繁體中文呈現

## 下一步建議
1. **中國 CSV 變更＋檢測報告＋handoff 尚未 commit**（12 CSV＋2 檢測報告），建議先 commit＋push 保存
2. 階段九（未排程）：擴張至**日本、韓國、琉球、港澳、東南亞**等區域（需新 region 代碼與機構盤點）——港澳可優先（香港檔案館/澳門檔案館/公共圖書館數位館藏）
3. 前端 GitHub Pages 部署後標題連動顯示「26 時期 · 12 類型 · 981 筆核心史料」（需 commit＋push 後自動更新）
