# Handoff — 2026-07-31（session 11）

## 專案階段
**階段八第十站完成：中國 465 筆 source_url 健康檢查（64 異常全數處置）**

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
- ✅ **中國 465 筆 source_url 健康檢查完成**：url_results.csv 檢查 136 筆（涵蓋全部中國史料網址），64 筆異常全數處置
- ✅ **22 組網址替換（42 處）**，寫入 12 個 CSV：
  - 機構官方網址更替：csmb.org.cn→chinajiandu.cn（漢/魏晉）、erlitou.com→eltxdmuseum.com（夏商周）、tjbwg.com→tjbwg.cn（遼）、wenzimuseum.com→wzbwg.com（夏商周）、hebkaogu.com→hbswwkg.com（夏商周/漢/魏晉/北宋）、peoplepress.com.cn→pph166.com（共和國）、shanggu.com→guji.com.cn（史前）、nywmuseum.com→nywmuseum.org.cn（漢）、sdkaogu.cn→sdswwkgyjy.com（漢）、scskaogu.com→sckg.com（隋唐五代/五代十國）、lnkaogu.com/lnkgw.com→lnkgyjy.com.cn（遼/史前）、shxkaogu.com→shxkgy.cn（漢）、jxkaogu.com→hhhmuseum.cn（漢）、zhouyuan.org→zhouyuanmuseum.com（夏商周）、shxkgy.com→shxkgy.cn（隋唐五代/唐）、history.cssn.cn→cssn.cn（夏商周）
  - 中研院：ihp.sinica.edu.tw→www1.ihp.sinica.edu.tw（民國×2）、mh.sinica.edu.tw→www.mh.sinica.edu.tw（民國×7）、shac.net.cn https→http（民國×8＋共和國×1）
  - 專案網址：archive.tsinghua.edu.cn→dag.tsinghua.edu.cn（民國）、history.cuhk.edu.hk guodian→新路徑（夏商周）、yungang.org→baike.baidu.com/museum/yungangshiku（魏晉）
- ✅ **4 筆標「–」＋備註**（無現行官方網站）：唐蕃會盟碑×2（隋唐五代/唐，zha.gov.cn 失效、大昭寺無官網）、放馬灘秦簡（秦，gswwkg.com 失效、甘肅考古所無官網）、里耶秦簡數位研究資料庫（秦，lyqj.hnu.edu.cn 已停站）
- ✅ **14 筆保留**（DNS 正常、境外連線暫時受阻或 403/412 反爬，非真失效）：anyangyinxu.cn、shxkg.com、shanximuseum.com、zjmuseum.cn、kaogu.cn、kaogu.net.cn、hljmuseum.com、hubeimuseum.net、cea.gov.cn、cnpc.com.cn、nhc.gov.cn、whc.unesco.org/zh/list/449、ncha.gov.cn、npc.gov.cn 等
- ✅ 中途 PowerShell 陣列誤操作（`@(@())` 壓平致 h→t 誤替）已用 git restore 還原並重新套用，驗證無殘留
- ✅ 12 個 CSV、50 行變更（utf-8 BOM 狀態均保留原狀）

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
1. **中國 CSV 變更尚未 commit**（12 檔、50 行），建議先 commit＋push 保存；後續可重跑 Supabase 匯入確認無誤
2. 民國/共和國時期**檢測報告**尚未產出（階段八第九站遺留）
3. 階段九（未排程）：擴張至**日本、韓國、琉球、港澳、東南亞**等區域（需新 region 代碼與機構盤點）
4. 前端 GitHub Pages 部署後標題連動顯示「26 時期 · 12 類型 · 981 筆核心史料」（需 commit＋push 後自動更新）
