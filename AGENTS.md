# 東亞歷史權威史料庫（專案藍圖）

> 本檔為跨 Agent 通用的專案藍圖（AGENTS.md 開放標準）。任何 Agent 的每個 session 都應先讀本檔＋`handoff.md`。

## 專案簡介
蒐集各國歷史權威史料，以臺灣為起點，逐步擴張至中國、港澳、琉球、東南亞等東亞與太平洋地區，建立同一資料庫集中管理的跨區域歷史資源平臺。

## 關鍵時程
<!-- 暫無時程，待後續補充 -->

## 目標與路線圖
- [x] 階段一：確認史料來源與範疇
- [x] 階段二：建立資料結構與蒐集流程（Metadata v1.3）
- [x] 階段三：荷西時期完整試收（42 筆，含文字、圖檔、地圖、影音）
- [x] 階段四前奏：史前時期完整收錄（48 筆，T07 為主）
- [x] 階段四第一站：明鄭時期完整收錄（45 筆，1661–1683，8 類 T 類型）
- [x] 階段四第二站：清領時期完整收錄（135 筆，1683–1895，分清領前期/後期，11 類 T 類型）
- [x] 階段四第三站：日治時期完整收錄（141 筆，1895–1945，12 類 T 類型全覆蓋）
- [x] 階段五：Supabase 正規化資料庫匯入（432 筆 → 5 正規化表）
- [x] 階段四最終站：戰後時期完整收錄（55 筆，1945–迄今，T01/T02/T03/T04/T05/T06/T07/T09/T10/T11/T12 共 11 類）
- [x] 階段六：戰後時期 Supabase 匯入（55 筆 → sources 487 / materials 541 / institutions 840 / institutions 117 / periods 6）
- [x] 階段七：戰後史料擴充（+29 筆 → 84 筆，補強原住民/環境/性別/勞工/文化/客家/防疫/體育等面向）
- [x] 階段七之二：全部 516 筆 source_url 健康檢查與修正（41 筆 URL 更新）
- [x] 階段八前奏：sources 表導入 region 欄位＋periods 表導入 region 欄位，前端連動篩選
- [x] 階段八第一站：中國史料收錄（73 筆，史前→夏商周→秦→漢，sources 517–589，periods 7–12）
- [x] 階段八第二站：魏晉南北朝收錄（20 筆，sources 590–609，period 13，institutions 170–173）
- [x] 階段八第二站之二：魏晉南北朝補充收錄（+12 筆，sources 703–714，建安文學／玄學／清談等文學思想史料）
- [x] 階段八第三站：隋唐五代收錄（29 筆，581–960，sources 715–743，institutions 174–179）
- [x] 階段八第三站之二：隋唐五代拆分為隋／唐／五代十國三個時期（periods 14=唐 24 筆、15=隋 1 筆、16=五代十國 4 筆，CSV 同步拆分）
- [x] 階段八第三站之三：隋／五代十國補充收錄（+15 筆，sources 744–758；隋→9 筆、五代十國→11 筆，含隋代科舉創立、大運河、諸病源候論、敦煌隋窟、李靜訓墓、龍藏寺碑、遣隋使；五代十國春秋、雕版九經、花間集、曹氏歸義軍、越窯秘色瓷、吳越國、後周世宗改革）
- [x] 階段八第四站：宋遼金元拆分五時期（periods 17–21＝北宋／南宋／遼（含西夏）／金／元），北宋收錄（24 筆，sources 759–782，period 17）
- [x] 階段八第五站：南宋收錄（24 筆，sources 783–806，period 18，institutions 182）
- [x] 階段八第六站：遼（含西夏）／金／元收錄（76 筆＝並行 Agent 46＋合併互補補強 30，sources 807–882，periods 19–21；遼26／金24／元26；institutions 183–195）
- [x] 階段八第六站之二：元補充收錄（+18 筆，sources 883–900，period 21；元26→44 筆，對外貿易 8＋雜曲文學 10；總 sources 807）
- [x] 階段八第七站：明朝收錄（32 筆，sources 901–932，period 22＝明（1368–1644），institutions 196=故宮博物院；10 類 T 類型）
- [x] 階段八第八站：清朝收錄（32 筆，sources 933–964，period 23＝清（1644–1912），code=qing-dynasty，全數對應既有機構；11 類 T 類型）
- [x] 階段八第八站之二：中國史前補強（新增 period 24＝中國史前（約前2070年以前）；TW period 1 改名「臺灣史前（1624年以前）」明確區分；補收 7 筆考古遺址 sources 965–971＋institutions 197–204；46 筆遼金元 CSV 回寫；中國累計 362 筆）
- [x] 階段八第九站：中華民國大陸時期＋中華人民共和國收錄（新增 period 25＝中華民國（1912–1949）code=republic-china、period 26＝中華人民共和國（1949–迄今）code=prc，均 region=CN；新收 103 筆＝民國 41（CN-ST-ROC-01–41，11 類缺 T02）＋共和國 62（CN-ST-PRC-01–62，12 類全）；sources 972–1074＋institutions 234–248；中國累計 465 筆）
- [x] 階段八第十站：中國 465 筆 source_url 健康檢查（url_results 136 筆中 64 異常全數處置：22 組網址替換 42 處＋4 筆標「–」＋14 筆境外暫時性受阻保留；12 個 CSV、50 行更新）

## 資料夾結構
```
各歷史資料庫/
├── AGENTS.md              # 專案藍圖
├── handoff.md             # 交接檔
├── .gitignore
├── rdq/
│   └── RDQ-spec-史料需求探索-20260730.md
└── sources/
    ├── Metadata欄位規範.md   # v1.3（22欄位、T01–T12、M01–M04）
    ├── 來源盤點清單.md       # 14大體系
    ├── sample/
    │   └── 試作第一批.csv
    ├── 史前時期/
    │   ├── metadata_史前時期.csv  # 48筆
    │   └── 檢測報告.md
    ├── 荷西時期/
    │   ├── metadata_荷西時期.csv  # 42筆
    │   └── 檢測報告.md
    ├── 明鄭時期/
    │   ├── metadata_明鄭時期.csv  # 66筆
    │   └── 檢測報告.md
    ├── 清領時期/
    │   ├── metadata_清領時期.csv  # 135筆（前期66+後期69）
    │   └── 檢測報告.md
    ├── 日治時期/
    │   ├── metadata_日治時期.csv  # 141筆
    │   └── 檢測報告.md
    ├── Import-ToSupabase.ps1    # CSV→SQL 匯出腳本（臺灣）
    ├── Import-Institutions.ps1  # 機構名稱→DB ID 對照腳本
    ├── Import-ChinaToSupabase.ps1 # CSV→SQL 匯出腳本（中國，含 region 欄位）
    └── 中國/
        ├── metadata_中國史前.csv    # 28 筆（21＋7 考古遺址補充）
        ├── metadata_中國夏商周.csv  # 18 筆
        ├── metadata_中國秦.csv      # 15 筆
        ├── metadata_中國漢.csv      # 20 筆
        ├── metadata_中國魏晉南北朝.csv  # 32 筆（20+12 補充）
        ├── metadata_中國隋.csv          # 9 筆（1+8 補充）
        ├── metadata_中國唐.csv          # 24 筆（含隋唐／隋唐五代跨代）
        ├── metadata_中國五代十國.csv    # 11 筆（4+7 補充）
        ├── metadata_中國北宋.csv        # 24 筆
        ├── metadata_中國南宋.csv        # 24 筆
        ├── metadata_中國遼.csv          # 8 筆（含西夏 5，補強版）
        ├── metadata_中國金.csv          # 12 筆（補強版）
        ├── metadata_中國元.csv          # 10 筆（補強版）
        ├── metadata_中國元_補充.csv     # 18 筆（對外貿易 8＋雜曲文學 10）
        ├── metadata_中國明.csv          # 32 筆
        ├── metadata_中國清.csv          # 32 筆
        ├── metadata_中國中華民國.csv    # 41 筆（CN-ST-ROC-01–41）
        ├── metadata_中國中華人民共和國.csv  # 62 筆（CN-ST-PRC-01–62）
        └── import_china_sources.sql  # 中國增量匯出 SQL（含 517–1074）
├── 戰後時期/
│   ├── metadata_戰後時期.csv         # 84筆（原55+擴充29）
│   ├── metadata_戰後時期_expansion_v2.csv  # 擴充29筆明細
│   ├── append_postwar.sql            # 原55筆匯入 SQL
│   └── append_postwar_v2.sql         # 擴充29筆匯入 SQL
    ├── import_sources.sql       # 匯出 SQL（機構+來源+source_material）
    ├── import_institutions.sql  # 機構關聯匯出 SQL（840 筆）

## 同步層級（本專案初始化至第 2 層級）

| 層級 | 平台 | 位置 | 讀取時機 |
|------|------|------|---------|
| L1 | 本地（GDrive） | `AGENTS.md`＋`handoff.md` | 每個 session |
| L2 | GitHub | dream23-byte/taiwan-historical-sources | 指定時 |
| L3 | Obsidian | 未啟用 | — |

## 工作約定
- 任何 Agent、任何電腦：**開工先讀 `handoff.md`，收工必更新 `handoff.md`**
- 修改共用檔案前先讀最新內容，避免覆蓋其他 Agent 的變更
- 所有回應與文件使用繁體中文
- 修改前先確認計畫，優先保留原有資料結構
