# Handoff — 2026-08-27（session 27）

## 專案階段
**event_sources 關聯建立完成（100 事件 ↔ 168 條史料連結）＋美國史料入庫完成**

## 當前狀態
- 全庫 **1314 筆**史料（臺灣 516／中國 466／港澳 32／琉球 30／日本 40／韓國 40／東南亞 60／印度 37／巴基斯坦 18／孟加拉 17／斯里蘭卡 18／美國 39／其他 1），sources max_id=1415、institutions max_id=422、periods 1–119
- **`historical_events` 表：100 筆事件**（CN 47／WORLD 42／JP 3／TW 8），id 1–100
  - ⚠️ 發現並修正：id 89–100 共 12 筆（世界史事件）原本 region 誤標為 TW，已改為 **WORLD**（使用者裁示：暫列世界分類，待史料擴充後再細分）
- **`event_sources` 表：168 條關聯已建立**，涵蓋 77 事件、引用 134 筆史料
  - 臺灣 8 事件全部對應（30 條）；中國 47 事件全部對應；日本 3 事件全部對應
  - WORLD 事件部分對應（二戰後由美國史料支應；蒙古帝國由中國/波斯史料支應）
  - 23 筆歐洲/中東古代事件暫無史料（美索不達米亞、希臘羅馬、宗教改革、文藝復興、法國大革命、一戰等），留白待擴充歐洲史料後補
- **`event_detail` RPC 已支援 sources 陣列**（含 citation_note、institutions），Edge Function `event-detail` 無需改版
- **模型供應商已切換為本機 Ollama**（qwen2.5:1.5b），全域設定已生效

## 本 session 完成項目
- ✅ **修正 event region**：id 89–100（12 筆世界史事件）region 由 TW 改為 WORLD
- ✅ **建立 event_sources 關聯 168 條**：臺灣 8 事件（30 條）、中國 47 事件（全對應）、日本 3 事件、WORLD 20 事件（美軍/波斯史料支援）；引用 134 筆史料
- ✅ 驗證 event_detail RPC 正常回傳 sources（含 citation_note、institutions）
- ✅ **修正事件 5 desc**（校對清單裁示通過）：政府遷臺與全島戒嚴改為「戒嚴令 1949.5.19 先、同年 12 月政府遷臺」
- ✅ **裁示結清**（2026-08-27）：事件 3 location_name 改「下關（簽約地）」；事件 1 category 已是「經濟」無需改；因果鏈第二節使用者確認維持現狀
- ✅ **事件 56 前因鏈經史料查證**（2026-08-27）：使用者記憶主框架正確，但細節修正——(1) 荷蘭 1622 是**先攻澳門失利**才轉佔澎湖築風櫃城（非直接為搶市場）；(2) 1623–24 福建巡撫南居益發動**風櫃圍城戰**（萬兵二百船圍城七月），荷軍非戰敗潰退，而是經**李旦調停**協議拆城退出、明朝默許轉往大員。desc 已改為查證版本
- ✅ **修復重大 Bug：`historical_events.effects` 欄位型別原是 `text[]`**，導致 event-detail API 回 400（`operator does not exist: bigint = text`）；migration `fix_effects_array_type` 已轉為 `bigint[]`（causes／effects 現已一致）
- ✅ **實測 event-detail API 正常**：`id=57`（鄭氏驅逐荷蘭人）回傳完整 sources 4 筆、causes/effects/contemporaries 正確；`id=47`、`id=99` 亦正常
- ✅ 更新 sources/AGENTS.md（檢索指引欄位說明已完成，本 session 無新增工具變更）

> 以下為前一 session（26）完成項目，保留供追溯：
- ✅ 建立美國史料 metadata CSV（39 筆）：`sources/美國/metadata_美國.csv`
- ✅ 建立美國匯入腳本：`sources/Import-UStoSupabase.ps1`
- ✅ 建立美國時期（id 113–119）：殖民地與獨立、早期共和國、南北戰爭、重建與鍍金、大蕭條與二戰、冷戰、當代
- ✅ 匯入 25 個美國機構（NARA、LOC、Smithsonian、CIA、EPA 等）
- ✅ 匯入 39 筆美國史料（NARA Catalog、LOC 數位館藏、Chronicling America、FRUS、Congress.gov、總統公開文件、Founders Online、CFR、Federal Register、人口普查、阿瓦隆計畫、史密森尼、國家安全檔案館、國會記錄、獨立戰爭/南北戰爭/大蕭條/二戰/越戰檔案、總統圖書館、婦女選舉權、民權運動、原住民、奴隸制度、移民、科學科技、DPLA、外交口述歷史、水門事件、國防部、CIA、能源部、環保署、國家公園、婦女歷史、勞工運動、猶太歷史）
- ✅ 匯入 source_materials（61 筆）與 source_institutions（122 筆）
- ✅ 地區篩選前端加入「美國」（frontend/ 與 docs/ index.html，GitHub Pages 已部署）
- ✅ 清除測試/非權威記錄 8 筆（僅保留劍橋中國史與大都會博物館）
- ✅ Metadata v1.4 新增「檢索指引」（search_hint）欄位＋US 39 筆回填＋重建 source_details view＋前端顯示

## 注意事項
- 事件資料來源已更新：100 事件現在從 GitHub Pages 網站載入（非本地暫存檔），網站 JS 透過 Supabase client 直接查詢 `historical_events` 表
- **`historical_events` 表 id 為 identity**：INSERT 需 `OVERRIDING SYSTEM VALUE`
- **因果鏈設計**：causes/effects 為 `bigint[]` 陣列，存放同表內的事件 id 引用
- **`event_sources` 表已建立關聯**：100 事件中 77 個有史料（168 條）；23 個歐洲/中東古代事件留白
- **低敏感工作規範仍適用**：對話不複述近代事件細節原文；進度以「事件編號＋操作結果」呈現
- **敏感性分級**：臺灣事件中 1624／1662／1895／1971 低敏感可直接操作；1947／1949／1987／1996 高敏感（建議由使用者在 Supabase 介面手動改）
- 史料查詢 API 踩坑（已修）：`bool_and` 忽略 NULL 需改 `NOT EXISTS`＋`COALESCE`；函數參數用 `p_` 前綴避免與欄位同名
- `historical_events`／`event_sources` 與 sources 同一 Supabase 專案（ushwjujxqvonyjumzgkp）

## 下一步（具體）
1. 之後回到史料續收（候選：尼泊爾／不丹・馬爾地夫・阿富汗／大洋洲／中東），開新站先讀 `Import-SouthAsiaToSupabase.ps1` 範本
2. 待 23 筆歐洲/中東事件有史料後，再回來補 event_sources 空白

## 同步狀態
- L1 本地：✅ AGENTS.md／handoff.md（本檔 session 27）
- L2 GitHub：🔄 待推送
- L3 Obsidian：❌ 未啟用

🕐 最後更新：2026-08-27（Agent big-pickle @ ALYSSALGGRAM）
