# 交接檔（handoff.md）

> 任何 Agent、任何電腦接手前**必讀**；收工時**必更新**。本檔只放交接必需的精簡資訊，詳細脈絡放 Obsidian（若有 L3）。

## ⏯️ 目前做到哪
### ✅ 已完成的歷史時期收錄
- **來源盤點清單** — 14 大來源體系 ✅
- **Metadata 欄位規範 v1.3** — 22 欄位，史料類型 T01–T12，資料類型 M01–M04 ✅
- **史前時期 48 筆** ✅（T07 為主 + T12）
- **荷西時期 42 筆** ✅（T01/T02/T04/T05/T07/T10/T12 共 7 類）
- **明鄭時期 66 筆** ✅（T01/T02/T04/T05/T07/T08/T10/T12 共 8 類）
- **清領時期 135 筆** ✅（清領前期 66 + 後期 69，11 類）
- **日治時期 141 筆** ✅（12/12 全類型覆蓋）
- **戰後時期 55 筆** ✅（T01/T02/T03/T04/T05/T06/T07/T09/T10/T11/T12 共 11 類）
  - 二二八事件（3筆）、白色恐怖（3筆）、民主化運動（5筆）、黨外刊物（4筆）
  - 經濟奇蹟（5筆：美援/加工出口區/十大建設/竹科/TSMC）
  - 國家檔案（10筆：行政院/總統府/國安局/國民黨/警總/國防部等）
  - 統計調查（5筆：統計年鑑/普查/人力/社會變遷/教育統計）
  - 方志年鑑（2筆：重修通志/年鑑）
  - 媒體（7筆：中央日報/聯合報/自立晚報/自由時報/臺灣文藝/美麗島/自由時代）
  - 教育醫療（3筆：九年國教/大學聯考/全民健保）
  - 口述歷史（5筆：白色恐怖/政治案件/原住民/老兵/產業人物）
  - 文化資產（2筆：文資保存/電影中心）
  - 攝影影像（3筆：新聞攝影/寫真帖/考古）
  - 外交憲政（4筆：外交/憲法/兩岸/修憲）
  - 其他（2筆：921地震/國家公園）

## 🚦 目前狀態
大型交付物：
- **來源盤點清單**：sources/來源盤點清單.md（14 大體系）
- **Metadata 欄位規範 v1.3**：sources/Metadata欄位規範.md（22 欄位、T01–T12、M01–M04）
- **全部 6 時期完整收錄**：各對應 CSV（合計 **487 筆**）
- **Supabase 資料庫已完工** ✅：5 正規化表 institutions(117) / sources(487) / source_materials(541) / source_institutions(840) / periods(6)

## ➡️ 下一步
1. **Supabase 驗收完成** — 全部 487 筆史料已匯入正規化資料庫（5 表完整連線）
2. 後續可開發 **查詢前端**（API + Web UI）
3. 若有新史料需追加，直接使用 `sources/戰後時期/append_postwar.sql` 為範本（注意 `OVERRIDING SYSTEM VALUE` 語法）

## ⚠️ 注意事項
- 本專案位於 Google 雲端硬碟（G:），檔案會自動同步至雲端
- 若換電腦工作，確認 GDrive 桌面版同步完成後再開工
- 來源網址可能隨典藏機構改版而失效，需定期檢查連結
- 海外原件（荷蘭、西班牙）多無中譯數位版，僅以 metadata 收錄
- 所有 CSV 檔案以 **UTF-8 BOM** 編碼儲存，Excel 開啟時才不會亂碼
- `sources.id` 為 `GENERATED ALWAYS AS IDENTITY`，INSERT 時須用 `OVERRIDING SYSTEM VALUE`

## 🕐 最後更新
- 時間：2026-07-30
- 更新者：OpenCode @ ALYSSALGGRAM
- Git push：✅ 已推送

## 📋 本期完成（2026-07-30）
### 修復
- ✅ 修正 `OVERRIDING SYSTEM VALUE` 語法位置（原放在 VALUES 結尾 → 改放 VALUES 前面）

### 戰後時期 Supabase 匯入（55 筆）
- ✅ sources INSERT 55 筆（IDs 433–487，identifier: TW-POSTWAR-XXX）
- ✅ source_materials INSERT 66 筆（M01–M04 跨類型）
- ✅ source_institutions INSERT ~133 筆（關聯 117 個機構）
- ✅ 驗證各表總數正確：sources=487 / materials=541 / institutions=840 / institutions=117 / periods=6
