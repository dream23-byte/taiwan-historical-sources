# Handoff — 2026-08-02（session 22）

## 專案階段
**時期名稱全區域統一「國家：名稱」格式完成＋前端新增「南亞」篩選**

## 當前狀態
- 全庫 **1273 筆**（臺灣 516／中國 465／港澳 32／琉球 30／日本 40／韓國 40／東南亞 60／印度 37／巴基斯坦 18／孟加拉 17／斯里蘭卡 18），sources max_id=1366、institutions max_id=397、periods 1–88
- 前端標題動態計算，瀏覽時顯示「88 時期 · 1273 筆」
- 南亞 SA 區域累計 **90 筆**（印度 37＋三國 53），前端已可正確篩選與標示

## 本 session 完成項目
- ✅ 統一日本站時期名稱（periods 39–45 → 「日本：…」：史前・古代／中世／江戶／明治／大正／昭和前期／戰後）
- ✅ 統一韓國站時期名稱（periods 46–51 → 「韓國：…」：史前・古代／高麗／朝鮮／大韓帝國・日治／大韓民國前期／大韓民國後期）
- ✅ 統一中國站時期名稱（periods 7–26 → 「中國：…」，20 期；「中國史前」改「中國：史前」去重複，中華民國／中華人民共和國保留專名加前綴）
- ✅ 統一琉球站時期名稱（periods 33–38 → 「琉球：…」：三山／第一尚氏／第二尚氏／沖繩縣・日本統治／琉球政府・美治／沖繩返還後）
- ✅ 統一臺灣站時期名稱（periods 1–6 → 「臺灣：…」：史前／荷西／明鄭／清領／日治／戰後，去「臺灣史前」重複）
- ✅ 統一香港站（27–30 → 「香港：英治／日佔／戰後／特區」）與澳門站（31–32 → 「澳門：葡治／特區」）
- ✅ **全庫 periods 1–88 皆為「國家：時期」格式**（驗證：無任一 period 不含「：」）
- ✅ **前端新增南亞支援**：docs/index.html 與 frontend/index.html 兩份同步修改（MD5 驗證一致）：
  - regionFilter 加 `<option value="SA">南亞</option>`（位於東南亞之後、其他之前）
  - regionMap 加 `SA:'南亞'`
  - 影響：南亞 90 筆不再顯示原文「SA」、不再被歸入「其他」篩選

## 澄清（使用者疑問）
- 使用者詢問「南亞史料似乎還未上傳」：**資料早已上傳**（全庫 1273 筆含 SA 90 筆，session 21 驗證通過）。此現象為前端缺 SA 對應所致——地區標籤顯示原文「SA」且篩選器無南亞選項，本次已修正，重新瀏覽即可見「南亞」篩選與正確標籤。

## 注意事項（承上 session）
- 巴基斯坦 CSV 18 筆／孟加拉 17 筆／斯里蘭卡 18 筆（PK/BD/LK-ST-01–18，region=SA）
- 匯入腳本批次切分：批次內最後一筆不加逗號（`$j -lt $batch.Count - 1`）
- Supabase REST 單次查詢上限 1000 筆（須 Range header）；`sources.id`／`periods.id`／`institutions.id` 為 `GENERATED ALWAYS AS IDENTITY`，INSERT 需 `OVERRIDING SYSTEM VALUE`；執行 SQL 需分批（15–18 筆/批）
- 本 session 改動為 DB 資料（periods 表 UPDATE）＋前端兩檔案；無 CSV／SQL 新增

## 下一步（候選，待使用者確認）
1. 南亞續站：尼泊爾（階段十最後一國）／或南亞補站（不丹・馬爾地夫・阿富汗）
2. 或開啟大洋洲／中東新區域
3. 開新站前先讀 `Import-SouthAsiaToSupabase.ps1`（最新版範本）與 `handoff.md` 注意事項

## 同步狀態
- L1 本地：✅ AGENTS.md／handoff.md（本檔 session 22）／前端兩份
- L2 GitHub：⚠️ 待 commit＋push（本 session：periods DB 更新（無檔案）、docs/index.html、frontend/index.html、handoff.md）
- L3 Obsidian：❌ 未啟用

🕐 最後更新：2026-08-02（Agent @ $env:COMPUTERNAME）
