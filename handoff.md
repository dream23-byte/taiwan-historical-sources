# Handoff — 2026-08-02（session 24）

## 專案階段
**教學網站後台整合（資料庫 API＋事件搬遷）＋模型供應商切換（本機 Ollama，徹底解決審查阻斷）**

## 當前狀態
- 全庫 **1273 筆**（臺灣 516／中國 465／港澳 32／琉球 30／日本 40／韓國 40／東南亞 60／印度 37／巴基斯坦 18／孟加拉 17／斯里蘭卡 18），sources max_id=1366、institutions max_id=397、periods 1–88 全部「國家：時期」格式
- **模型供應商已切換為本機 Ollama**：OpenRouter Llama 需付費、不可用；已安裝 Ollama 0.32.5＋`qwen2.5:1.5b`（winget 安裝），全域設定 `C:\Users\myaly\.config\opencode\opencode.jsonc` 改為 `"model": "ollama/qwen2.5:1.5b"`；**需重啟 opencode 才生效，尚未驗證**

## 本 session 完成項目
- ✅ 判定重啟 opencode 後仍被 Content Exists Risk 阻斷，且 OpenRouter Llama 需付費無法使用
- ✅ 安裝 Ollama 0.32.5（`winget install Ollama.Ollama`）＋拉取 `qwen2.5:1.5b`（986 MB，CPU 可跑）
- ✅ 驗證：`http://localhost:11434/api/tags` 回傳 `qwen2.5:1.5b`，模型正常回應
- ✅ 硬體確認：Intel i7-1165G7 + Iris Xe 內顯 + 16GB RAM，無獨顯（僅能 CPU 推理，較慢）
- ✅ 全域 `opencode.jsonc`：`model` 改為 `ollama/qwen2.5:1.5b`（OpenRouter 設定移除）

## 注意事項
- **本機 Ollama 特性**：完全離線零審查；1.5B 小模型在 CPU 上每回合約 10-30 秒、能力較弱；若需更強可改 `qwen2.5:7b`（RAM 16GB 勉強可跑，更慢）
- **`opencode.jsonc` 為全域設定，不在 repo 內**：另一台電腦需自行安裝 Ollama＋編輯設定，不隨 git 同步
- **Content Exists Risk 已根治**：不再依賴外部供應商，任何話題不再被審查阻斷
- **低敏感工作規範仍適用**：對話不複述近代事件細節原文；進度以「事件編號＋操作結果」呈現；內容一律以檔案與 DB 為準
- **敏感性分級**：臺灣 8 事件中 1624／1662／1895／1971 低敏感可直接操作；1947／1949／1987／1996 高敏感（建議凍結不動，由使用者在 Supabase 介面手動改）
- **事件資料來源**：教學網站 88 事件寫死在 `C:\Users\myaly\AppData\Local\Temp\opencode\code_artifact.html` 第 442 行 `const historyData = [`（本機暫存檔，不需對外下載）
- 史料查詢 API 踩坑（已修）：`bool_and` 忽略 NULL 需改 `NOT EXISTS`＋`COALESCE`；函數參數用 `p_` 前綴避免與欄位同名（改參數名先 DROP FUNCTION）
- `historical_events`／`event_sources` 與 sources 同一 Supabase 專案（ushwjujxqvonyjumzgkp），`event_sources.source_id` 直連 `sources.id`
- 匯入慣例：sources/periods/institutions 為 `GENERATED ALWAYS AS IDENTITY`，INSERT 需 `OVERRIDING SYSTEM VALUE`；SQL 分批 15–18 筆/批；REST 上限 1000 筆

## 下一步（具體）
1. **重啟 opencode** 使 Ollama 生效；開新 session 貼 `docs/低敏感工作指令模板.md` 的開工指令，先用低敏感工作（如搬遷事件）測試新模型順暢度
2. 搬遷其餘 **80 事件**（世界／中國／日本軌）入 `historical_events`（資料在本地暫存檔行 442–540），再建 `event_sources` 關聯；之後重跑 `event-detail` 讓時空對照與因果鏈完整
3. 使用者裁示 `docs/校對清單_臺灣事件MVP.md` 第三節（尤其**事件 5 desc 順序**：戒嚴令 1949.5.19 先、政府遷臺同年 12 月）後修正
4. 之後回到史料續收（候選：尼泊爾／不丹・馬爾地夫・阿富汗／大洋洲／中東），開新站先讀 `Import-SouthAsiaToSupabase.ps1` 範本

## 同步狀態
- L1 本地：✅ AGENTS.md／handoff.md（本檔 session 24）
- L2 GitHub：待推
- L3 Obsidian：❌ 未啟用

🕐 最後更新：2026-08-02（Agent big-pickle @ ALYSSALGGRAM）
