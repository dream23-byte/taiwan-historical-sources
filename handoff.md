# Handoff — 2026-08-20（session 26）

## 專案階段
**教學網站後台整合（88事件搬遷完成＋因果鏈建立）＋美國史料入庫完成**

## 當前狀態
- 全庫 **1314 筆**史料（臺灣 516／中國 466／港澳 32／琉球 30／日本 40／韓國 40／東南亞 60／印度 37／巴基斯坦 18／孟加拉 17／斯里蘭卡 18／美國 39／其他 1），sources max_id=1415、institutions max_id=422、periods 1–119
- **`historical_events` 表：88 筆事件已完整匯入**（CN 47／WORLD 30／JP 3／TW 8），id 1–88，region 分類正確
- **因果鏈（causes/effects）已建立**：中國、世界、臺灣三軌因果網路完成，所有引用均驗證通過
- **模型供應商已切換為本機 Ollama**（qwen2.5:1.5b），全域設定已生效

## 本 session 完成項目
- ✅ 建立美國史料 metadata CSV（39 筆）：`sources/美國/metadata_美國.csv`
- ✅ 建立美國匯入腳本：`sources/Import-UStoSupabase.ps1`
- ✅ 建立美國時期（id 113–119）：殖民地與獨立、早期共和國、南北戰爭、重建與鍍金、大蕭條與二戰、冷戰、當代
- ✅ 匯入 25 個美國機構（NARA、LOC、Smithsonian、CIA、EPA 等）
- ✅ 匯入 39 筆美國史料（NARA Catalog、LOC 數位館藏、Chronicling America、FRUS、Congress.gov、總統公開文件、Founders Online、CFR、Federal Register、人口普查、阿瓦隆計畫、史密森尼、國家安全檔案館、國會記錄、獨立戰爭/南北戰爭/大蕭條/二戰/越戰檔案、總統圖書館、婦女選舉權、民權運動、原住民、奴隸制度、移民、科學科技、DPLA、外交口述歷史、水門事件、國防部、CIA、能源部、環保署、國家公園、婦女歷史、勞工運動、猶太歷史）
- ✅ 匯入 source_materials（61 筆）與 source_institutions（122 筆）
- ✅ 更新 AGENTS.md（統計數字＋路線圖＋資料夾結構）
- ✅ 更新 sources/AGENTS.md（region 碼加入 US）
- ✅ 地區篩選前端加入「美國」（frontend/ 與 docs/ index.html，GitHub Pages 已部署）
- ✅ 清除測試/非權威記錄：108課綱＋維基百科＋Britannica＋chinaknowledge＋MIT OCW＋CNN＋BBC＋JSTOR 共 8 筆刪除；僅保留劍橋中國史（CN）與大都會博物館（OTHER）兩筆權威參考

## 注意事項
- **事件資料來源已更新**：88事件現在從 GitHub Pages 網站載入（非本地暫存檔），網站 JS 透過 Supabase client 直接查詢 `historical_events` 表
- **`historical_events` 表 id 為 identity**：INSERT 需 `OVERRIDING SYSTEM VALUE`
- **因果鏈設計**：causes/effects 為 `bigint[]` 陣列，存放同表內的事件 id 引用
- **event_sources 表尚未建立關聯**：88事件與1322筆史料的對應關係待建
- **低敏感工作規範仍適用**：對話不複述近代事件細節原文；進度以「事件編號＋操作結果」呈現
- **敏感性分級**：臺灣事件中 1624／1662／1895／1971 低敏感可直接操作；1947／1949／1987／1996 高敏感（建議由使用者在 Supabase 介面手動改）
- 史料查詢 API 踩坑（已修）：`bool_and` 忽略 NULL 需改 `NOT EXISTS`＋`COALESCE`；函數參數用 `p_` 前綴避免與欄位同名
- `historical_events`／`event_sources` 與 sources 同一 Supabase 專案（ushwjujxqvonyjumzgkp）

## 下一步（具體）
1. **建立 event_sources 關聯**：將88事件與1322筆史料建立對應關係（event_sources 表）
2. 使用者裁示 `docs/校對清單_臺灣事件MVP.md` 第三節（尤其**事件 5 desc 順序**：戒嚴令 1949.5.19 先、政府遷臺同年 12 月）後修正
3. 重跑 `event-detail` Edge Function 讓時空對照與因果鏈完整
4. 之後回到史料續收（候選：尼泊爾／不丹・馬爾地夫・阿富汗／大洋洲／中東），開新站先讀 `Import-SouthAsiaToSupabase.ps1` 範本

## 同步狀態
- L1 本地：✅ AGENTS.md／handoff.md（本檔 session 26）
- L2 GitHub：❌ 待推
- L3 Obsidian：❌ 未啟用

🕐 最後更新：2026-08-20（Agent big-pickle @ ALYSSALGGRAM）
