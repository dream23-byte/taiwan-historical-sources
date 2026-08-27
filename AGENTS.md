# 東亞歷史權威史料庫（專案藍圖）

> 本檔為跨 Agent 通用的專案藍圖（AGENTS.md 開放標準）。任何 Agent 的每個 session 都應先讀本檔＋`handoff.md`。

## 專案簡介
蒐集各國歷史權威史料，以臺灣為起點，逐步擴張至中國、港澳、琉球、東南亞等東亞與太平洋地區，建立同一資料庫集中管理的跨區域歷史資源平臺。

## 當前進度（2026-08-20）
- **全庫 1314 筆**：臺灣 516／中國 466／港澳 32／琉球 30／日本 40／韓國 40／東南亞 60／印度 37／巴基斯坦 18／孟加拉 17／斯里蘭卡 18／美國 39／其他 1
- sources 1–1415・periods 1–119・institutions 1–422，全部已匯入 Supabase
- 前端標題動態顯示「118 時期 · 1314 筆」（不需改 code）
- **教學網站後台整合進行中**：`search-sources`／`event-detail` API 已上線、`historical_events` 100 事件入庫（CN 47／WORLD 42／JP 3／TW 8）、`event_sources` 168 條關聯已建立（77 事件→134 史料）
- **美國史料已入庫**：39 筆（NARA/LOC/FRUS/DPLA/Smithsonian 等），region=US，7 時期（殖民地～當代）

## 目標與路線圖（精華）
| 階段 | 狀態 | 內容 | 範圍 |
|------|------|------|------|
| 一～二 | ✅ | 史料來源確認＋Metadata v1.3 | — |
| 三～七 | ✅ | 臺灣史料（荷西/史前/明鄭/清領/日治/戰後） | sources 1–516 |
| 八 | ✅ | 中國史料（史前～共和國，含港澳） | sources 517–1106 |
| 九 | 🔄 | 東亞其他區域（琉球/日本/韓國/東南亞已完成） | sources 1107–1276 |
| 十 | 🔄 | 南亞（印度/巴基斯坦/孟加拉/斯里蘭卡已完成；尼泊爾/其他待續） | sources 1277–1366 |
| 十一 | 🔄 | 北美（美國 NARA/LOC/FRUS/DPLA/Smithsonian 等 39 筆） | sources 1367–1405 |
| 十二 | 🔄 | 教學網站後台整合（史料查詢 API＋事件表搬遷＋蝴蝶效應因果鏈） | Supabase |

> 每站詳盡明細（時期/機構/UNESCO/補充筆數）：`docs/progress.md`

## 資料夾結構
```
各歷史資料庫/
├── AGENTS.md            # 專案藍圖（本檔）
├── handoff.md           # 交接檔（每 session 必讀，收工必寫）
├── docs/
│   ├── index.html       # 前端查閱頁（與 frontend/ 同步）
│   └── progress.md      # 歷史站別明細（Lazy 讀取）
├── frontend/index.html  # 前端（與 docs/ 同步）
├── rdq/                 # RDQ 需求探索產出
└── sources/
    ├── AGENTS.md            # sources 工作慣例（T 對照・匯入腳本，Lazy 讀取）
    ├── Metadata欄位規範.md  # v1.3
    ├── 來源盤點清單.md      # 14 大體系
    ├── Import-*.ps1         # 各區域 CSV→SQL 匯出腳本
    ├── import_*_sources.sql # 各區域增量匯出 SQL
    ├── sample/              # 試作樣本
    ├── 臺灣各時期/          # 史前・荷西・明鄭・清領・日治・戰後（516 筆）
    ├── 中國/                # 18 個 metadata CSV（465 筆）
    ├── 港澳/ 琉球/ 日本/ 韓國/ 東南亞/ 印度/ 巴基斯坦/ 孟加拉/ 斯里蘭卡/ 美國/  # 各區域 metadata CSV＋檢測報告
```

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

## 詳情查詢（Lazy Loading）
以下檔案**不需預載**，任務相關才 Read：
- 開新站／查歷史明細（時期、機構、UNESCO）：`docs/progress.md`
- 在 sources 內工作（T 類型對照、CSV 欄位、匯入腳本慣例）：`sources/AGENTS.md`
- 每次收工/交接：更新 `handoff.md`
