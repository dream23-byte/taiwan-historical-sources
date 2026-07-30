# Handoff — 2026-07-30

## 專案階段
**階段七已完成**，準備進入**階段八：多區域擴張**

## 當前狀態
- 516 筆史料已完整匯入 Supabase（同一資料庫）
- 專案更名為「**東亞歷史權威史料庫**」
- 前端：https://dream23-byte.github.io/taiwan-historical-sources/
- 資料庫容量：516 筆約 1 MB，Free Tier 上限 500 MB（充裕）

## 重要決策（本 session）
- ✅ **同一資料庫集中管多區域史料**— 不加開第二個專案，`sources` 表導入 `region` 欄位
- ✅ **更名** — 專案名稱、網站標題統一改為「東亞歷史權威史料庫」

## 注意事項
- Supabase Free Tier 容量充裕（500 MB），短期無需升級
- `sources.id` 為 `GENERATED ALWAYS AS IDENTITY`，INSERT 須用 `OVERRIDING SYSTEM VALUE`
- 前端用 REST API（`fetch()` + `apikey`），不依賴 `@supabase/supabase-js`
- `docs/index.html` 與 `frontend/index.html` 需同步更新（本 session 已同步）
- Git push 狀態：✅ 已推（`b81c44e`）

## 下一步建議
1. 在 `sources` 表新增 `region` 欄位（`VARCHAR(20)`，預設 `'TW'`）
2. 建立跨區域史料 CSV（以現有格式為範本）
3. 前端搜尋增加 region 篩選器
