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
- **戰後時期 84 筆** ✅（原55+擴充29，涵蓋以下17個面向）

## 🚦 目前狀態
大型交付物：
- **來源盤點清單**：sources/來源盤點清單.md（14 大體系）
- **Metadata 欄位規範 v1.3**：sources/Metadata欄位規範.md（22 欄位、T01–T12、M01–M04）
- **全部 6 時期完整收錄**：各對應 CSV（合計 **516 筆**）
- **Supabase 資料庫已完工** ✅：5 正規化表 institutions(126) / sources(516) / source_materials(590) / source_institutions(896) / periods(6)
- **查詢前端已啟用** ✅：`frontend/server.js`（本機開發，Node.js 靜態伺服器 port 8080）
- **516 筆 source_url 健康檢查** ✅：41 筆 URL 修正（rub.ith/archives.mh/nmp-park/gissrv5-ssl/huygens-404 等）

## ➡️ 下一步
1. 後續可部署前端至雲端（建議改用 GitHub Pages 或自購網域+主機）
2. 516 筆已全數驗證，後續若追加新史料，使用 `append_postwar_v2.sql` 為範本
3. 可考慮擴充其他時期（如清領前/後期追加）

## ⚠️ 注意事項
- 本專案位於 Google 雲端硬碟（G:），檔案會自動同步至雲端
- 若換電腦工作，確認 GDrive 桌面版同步完成後再開工
- 來源網址可能隨典藏機構改版而失效，需定期檢查連結
- 海外原件（荷蘭、西班牙）多無中譯數位版，僅以 metadata 收錄
- 所有 CSV 檔案以 **UTF-8 BOM** 編碼儲存，Excel 開啟時才不會亂碼
- `sources.id` 為 `GENERATED ALWAYS AS IDENTITY`，INSERT 時須用 `OVERRIDING SYSTEM VALUE`

## 🕐 最後更新
- 時間：2026-07-30（更新 v2）
- 更新者：OpenCode @ ALYSSALGGRAM
- Git push：✅ 已推送（`a3e3384` docs/ + `a95fd70` 擴充+URL健檢）

## 📋 本期完成（2026-07-30 第二階段 — 戰後史料擴充 + URL 健檢）

### session 1（前端修復+擴充+URL健檢）
- ✅ **前端修復**：`frontend/index.html` 改用 REST API（移除無法載入的 supabase-js CDN），`frontend/server.js`（Node.js 版比 PowerShell 版穩定）
- ✅ **戰後史料擴充 29 筆**（IDs 488–516，TW-POSTWAR-056~084）：補強原住民(4)、環境(4)、性別/LGBTQ(3)、勞工/學運(4)、文化/藝術(5)、客家(2)、防疫(3)、金融/國土(3)、體育(1)
  - 新增機構 9 個（ID 118–126：原民會/臺文館/臺美館/客委會/衛福部/疾管署/慈濟/公視/環保署）
  - 最終驗證：sources=516 / materials=590 / institutions=126 / src_insts=896 / periods=6
- ✅ **516 筆 source_url 健康檢查**：67 唯一 URL → 41 筆修正（rub.ith → tais / archives.mh → archives / nmp/park → nmp / gissrv5-https → http / huygens-404 → root）
- ✅ AGENTS.md + handoff.md 已更新
