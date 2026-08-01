# sources 工作慣例

> 在 `sources/` 內工作（開新站、建 CSV、匯入 Supabase）時閱讀本檔。
> 新工作階段**勿預先載入**，進入 sources 工作時才 Read。

## 一、史料類型對照（CSV「類型」→ source_type_id）
| 分類碼 | 名稱 | 分類碼 | 名稱 |
|--------|------|--------|------|
| T01 | 官方檔案文書 | T07 | 考古與物質文化／傳世文獻 |
| T02 | 方志與輿圖 | T08 | 碑碣與實物刻文 |
| T03 | 報刊與雜誌 | T09 | 口述歷史 |
| T04 | 人物傳記與家族史料 | T10 | 產業與經濟實錄 |
| T05 | 照片與影像 | T11 | 教育與醫療史 |
| T06 | 統計與調查資料 | T12 | 自然與環境背景 |

> source_type_id = T 編號（T01→1）。T99＝其他。完整說明見 `Metadata欄位規範.md`。

## 二、資料類型對照（CSV「資料類型」→ source_materials.material_type_id）
| 分類碼 | 名稱 | material_type_id |
|--------|------|------------------|
| M01 | 文字 | 1 |
| M02 | 圖檔 | 2 |
| M03 | 地圖 | 3 |
| M04 | 影音 | 4 |

> 一筆史料可對應多個資料類型，CSV 以「;」分隔。

## 三、CSV 欄位（末欄 region）
- 各區域 CSV 固定 22 欄（題名…備註，對應 `Metadata欄位規範.md` v1.3），**末欄加 region**（TW/CN/HK/MO/RY/JP/KR/SEA）。
- 識別碼規則：`區域碼-ST-序號`（如 VN-ST-01、KH-ST-01），全庫唯一。
- 時期：CSV「年代範圍」開頭文字決定 period（Import 腳本 switch -Wildcard），各國獨立 code（vn-*/ph-*/kh-*/la-*/my-*/sg-* 等）。

## 四、匯入流程（每站固定步驟）
1. 建 `metadata_區域.csv`＋`檢測報告_區域.md`
2. 複製最新版腳本 `Import-SEAtoSupabase.ps1` 為 `Import-新站ToSupabase.ps1`，改 CSV 檔名清單與時期對應
3. DryRun 產生 `import_區域_sources.sql`（含 sources/periods/institutions/materials/inst_links＋setval）
4. Supabase 分批執行：**periods → institutions → sources（每批 10–20 筆）→ materials → inst_links → setval**
5. 驗證：各表筆數、max id、ON CONFLICT 無重名
6. 更新 AGENTS.md（精華表＋資料夾結構）／docs/progress.md（明細）／handoff.md

## 五、注意事項（踩坑紀錄）
- `sources.id`／`periods.id`／`institutions.id` 皆 `GENERATED ALWAYS AS IDENTITY`，INSERT 需 `OVERRIDING SYSTEM VALUE`
- **批次逗號 bug**：批次內逗號邏輯用 `$j -lt $batch.Count - 1`（批次內最後一筆不加逗號）
- Supabase REST 單次查詢硬上限 1000 筆（db-max-rows=1000），查詢須用 Range header 分批
- 新機構先查重名（ON CONFLICT 保護）；機構 id 接續既有 max，setval 校正
- 前端標題動態計算（Range 拉全量後 `${periods} 時期 · ${count} 筆`），匯入完成即自動更新，不需改 code
