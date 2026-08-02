# Handoff — 2026-08-02（session 23）

## 專案階段
**教學網站後台整合（資料庫 API＋事件搬遷）＋模型供應商切換（解決內容審查阻斷）**

## 當前狀態
- 全庫 **1273 筆**（臺灣 516／中國 465／港澳 32／琉球 30／日本 40／韓國 40／東南亞 60／印度 37／巴基斯坦 18／孟加拉 17／斯里蘭卡 18），sources max_id=1366、institutions max_id=397、periods 1–88 全部「國家：時期」格式
- **模型供應商已切換**：全域設定 `C:\Users\myaly\.config\opencode\opencode.jsonc` 新增 `"model": "openrouter/meta-llama/llama-3.3-70b-instruct"`（OpenRouter 平台，西方開源、審查較寬鬆）；**需重啟 opencode 才生效**

## 本 session 完成項目
- ✅ **釐清 Content Exists Risk 根因**：上游模型供應商（opencode 預設 big-pickle，經 OpenCode Go 平台）對整個對話上下文做內容審查；本對話累積近代臺灣事件細節（二二八、白色恐怖等）後即被擋。**與 git／Supabase／curl 無關，非違規**
- ✅ 檢查 opencode 設定：確認原無 model 設定（用預設）、已登入 2 個 credentials（OpenRouter＋OpenCode Go）
- ✅ 使用者選擇 Llama 系列 → 查證精確 slug 後寫入 `opencode.jsonc`（避開中國系模型，對臺灣主題更安全）
- ✅ 產生兩份交接文件（session 22 末產出，本次一併 commit）：
  - `docs/校對清單_臺灣事件MVP.md`：臺灣 8 事件內容校對＋因果鏈＋結構性待裁示
  - `docs/低敏感工作指令模板.md`：新 session 開工模板（低敏感工作規範）

## 承上 session（22）成果摘要
- **史料查詢 API**：`public.search_sources(p_q, p_region, p_period, p_type_code, p_lim)`＋Edge Function `search-sources`（公開 GET，參數 q/region/period/type/limit，回傳完整史料結構含機構/material/source_url）
- **臺灣史事件 MVP**：`historical_events` 新增 region／causes bigint[]／effects bigint[]；臺灣 8 事件 id 1–8（1624 熱蘭遮堡／1662 鄭氏驅荷／1895 馬關條約／1947 二二八／1949 遷臺戒嚴／1971 退出聯合國／1987 解嚴／1996 直選臺海危機）；`event_sources` 16 筆關聯；`event_detail` function＋Edge Function `event-detail`（含因果鏈＋±15 年同時期）
- 前端兩份 index.html（docs/ 與 frontend/，MD5 一致）已加南亞篩選；此部分已於 commit 89e2354 推送

## 注意事項
- **Content Exists Risk（供應商審查）**：換供應商＝換「provider＋model＋key」整體；已改用 OpenRouter Llama。若再被擋，可考慮本機 Ollama（離線零審查）或 Dolphin uncensored（弱但最不會擋）
- **低敏感工作規範**：對話不複述近代事件細節原文；進度以「事件編號＋操作結果」呈現；內容一律以檔案與 DB 為準
- **敏感性分級**：臺灣 8 事件中 1624／1662／1895／1971 低敏感可直接操作；1947／1949／1987／1996 高敏感（建議凍結不動，由使用者在 Supabase 介面手動改）
- **`opencode.jsonc` 為全域設定，不在 repo 內**：另一台電腦需自行編輯，不隨 git 同步
- **事件資料來源**：教學網站 88 事件寫死在 `C:\Users\myaly\AppData\Local\Temp\opencode\code_artifact.html` 第 442 行 `const historyData = [`（本機暫存檔，不需對外下載）
- 史料查詢 API 踩坑（已修）：`bool_and` 忽略 NULL 需改 `NOT EXISTS`＋`COALESCE`；函數參數用 `p_` 前綴避免與欄位同名（改參數名先 DROP FUNCTION）
- `historical_events`／`event_sources` 與 sources 同一 Supabase 專案（ushwjujxqvonyjumzgkp），`event_sources.source_id` 直連 `sources.id`
- 匯入慣例：sources/periods/institutions 為 `GENERATED ALWAYS AS IDENTITY`，INSERT 需 `OVERRIDING SYSTEM VALUE`；SQL 分批 15–18 筆/批；REST 上限 1000 筆

## 下一步（具體）
1. **重啟 opencode** 使新 model 生效；開新 session 時貼 `docs/低敏感工作指令模板.md` 的開工指令，Agent 讀本檔＋校對清單接續
2. 搬遷其餘 **80 事件**（世界／中國／日本軌）入 `historical_events`（資料在本地暫存檔行 442–540），再建 `event_sources` 關聯；之後重跑 `event-detail` 讓時空對照與因果鏈完整
3. 使用者裁示 `docs/校對清單_臺灣事件MVP.md` 第三節（尤其**事件 5 desc 順序**：戒嚴令 1949.5.19 先、政府遷臺同年 12 月）後修正
4. 之後回到史料續收（候選：尼泊爾／不丹・馬爾地夫・阿富汗／大洋洲／中東），開新站先讀 `Import-SouthAsiaToSupabase.ps1` 範本

## 同步狀態
- L1 本地：✅ AGENTS.md／handoff.md（本檔 session 23）／docs 兩份交接文件
- L2 GitHub：✅ 已推（commit 0277f9d）
- L3 Obsidian：❌ 未啟用

🕐 最後更新：2026-08-02（Agent @ $env:COMPUTERNAME）
