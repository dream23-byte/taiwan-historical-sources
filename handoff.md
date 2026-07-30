# Handoff — 2026-07-30

## 專案階段
**階段七已完成**，準備進入**階段八：多區域擴張**

## 當前狀態
- 516 筆臺灣史料（史前→戰後）已完整匯入 Supabase
- 前端已部署至 GitHub Pages：https://dream23-byte.github.io/taiwan-historical-sources/
- 資料庫容量現況：516 筆文字資料約 1 MB，Free Tier 上限 500 MB

## 重要決策（本 session）
✅ **同一資料庫集中管** — 不加開第二個專案，直接在 `sources` 表導入 `region` 欄位，收錄中國、港澳、琉球、東南亞等非臺灣史料

## 注意事項
- Supabase Free Tier 容量充裕，不需擔心收費
- `sources.id` 為 `GENERATED ALWAYS AS IDENTITY`，INSERT 時須用 `OVERRIDING SYSTEM VALUE`
- 前端用 REST API（`fetch()` + `apikey` header），不依賴 `@supabase/supabase-js`
- `docs/index.html` 與 `frontend/index.html` 需同步更新
- 戰後史料擴充 SQL 範本：`append_postwar_v2.sql`

## 下一步建議
1. 先在 `sources` 表新增 `region` 欄位（`VARCHAR(20)`，預設 `'TW'`）
2. 開始從既有 CSV 結構複製範本，建立跨區域史料 CSV
3. 前端搜尋增加 region 篩選器
