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
- [ ] 階段八第二站：中國史料擴張（魏晉南北朝／隋唐五代）或日本／韓國／琉球等區域

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
        ├── metadata_中國史前.csv    # 21 筆
        ├── metadata_中國夏商周.csv  # 18 筆
        ├── metadata_中國秦.csv      # 15 筆
        └── metadata_中國漢.csv      # 20 筆
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
