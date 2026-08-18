# Handoff — 2026-08-19（session 25）

## 專案階段
**教學網站後台整合（88事件搬遷完成＋因果鏈建立）＋模型供應商已切換本機 Ollama**

## 當前狀態
- 全庫 **1273 筆**史料（臺灣 516／中國 465／港澳 32／琉球 30／日本 40／韓國 40／東南亞 60／印度 37／巴基斯坦 18／孟加拉 17／斯里蘭卡 18），sources max_id=1366、institutions max_id=397、periods 1–88
- **`historical_events` 表：88 筆事件已完整匯入**（CN 47／WORLD 30／JP 3／TW 8），id 1–88，region 分類正確
- **因果鏈（causes/effects）已建立**：中國、世界、臺灣三軌因果網路完成，所有引用均驗證通過
- **模型供應商已切換為本機 Ollama**（qwen2.5:1.5b），全域設定已生效，本 session 使用正常

## 本 session 完成項目
- ✅ 從網站 `https://dream23-byte.github.io/2026-teaching-optimization/code_artifact.html` 提取完整88事件數據
- ✅ 清除舊表殘留數據（因先前 OVERRIDING SYSTEM VALUE 覆蓋錯誤）
- ✅ 分5批正確匯入88事件（id 1–88），region 分類：CN 47、WORLD 30、JP 3、TW 8
- ✅ 建立因果鏈：中國47事件因果網路、世界30事件因果網路、臺灣8事件因果網路
- ✅ 驗證所有 effects 引用均指向存在的 id（無 BROKEN 引用）
- ✅ 確認 Ollama 本機運作正常，Content Exists Risk 不再阻斷

## 注意事項
- **事件資料來源已更新**：88事件現在從 GitHub Pages 網站載入（非本地暫存檔），網站 JS 透過 Supabase client 直接查詢 `historical_events` 表
- **`historical_events` 表 id 為 identity**：INSERT 需 `OVERRIDING SYSTEM VALUE`
- **因果鏈設計**：causes/effects 為 `bigint[]` 陣列，存放同表內的事件 id 引用
- **event_sources 表尚未建立關聯**：88事件與1273筆史料的對應關係待建
- **低敏感工作規範仍適用**：對話不複述近代事件細節原文；進度以「事件編號＋操作結果」呈現
- **敏感性分級**：臺灣事件中 1624／1662／1895／1971 低敏感可直接操作；1947／1949／1987／1996 高敏感（建議由使用者在 Supabase 介面手動改）
- 史料查詢 API 踩坑（已修）：`bool_and` 忽略 NULL 需改 `NOT EXISTS`＋`COALESCE`；函數參數用 `p_` 前綴避免與欄位同名
- `historical_events`／`event_sources` 與 sources 同一 Supabase 專案（ushwjujxqvonyjumzgkp）

## 下一步（具體）
1. **建立 event_sources 關聯**：將88事件與1273筆史料建立對應關係（event_sources 表）
2. 使用者裁示 `docs/校對清單_臺灣事件MVP.md` 第三節（尤其**事件 5 desc 順序**：戒嚴令 1949.5.19 先、政府遷臺同年 12 月）後修正
3. 重跑 `event-detail` Edge Function 讓時空對照與因果鏈完整
4. 之後回到史料續收（候選：尼泊爾／不丹・馬爾地夫・阿富汗／大洋洲／中東），開新站先讀 `Import-SouthAsiaToSupabase.ps1` 範本

## 同步狀態
- L1 本地：✅ AGENTS.md／handoff.md（本檔 session 25）
- L2 GitHub：✅ 已推（commit f86bcd3）
- L3 Obsidian：❌ 未啟用

🕐 最後更新：2026-08-19（Agent big-pickle @ ALYSSALGGRAM）
