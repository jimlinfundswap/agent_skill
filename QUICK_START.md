# 快速開始指南

歡迎使用 Agent Skills 收集倉庫！本指南將幫助您快速上手。

## 📚 什麼是 Agent Skill？

Agent Skill 是一套結構化的指令、步驟與範例，用於擴展 AI 助理（如 Claude、GPT 等）在特定任務上的能力。

每個 skill 都經過精心設計，包含：
- ✅ **明確的適用情境**：幫助您判斷何時使用
- ✅ **詳細的操作步驟**：確保正確執行
- ✅ **實際範例**：提供具體參考
- ✅ **注意事項**：避免常見錯誤

## 🎯 如何找到適合的 Skill？

### 方法 1：從情境出發（推薦）

直接在 [README.md](./README.md) 的「快速檢索」區找到您的情境，例如：
- 「我需要開發網頁」→ 查看 Web Development 類別
- 「我需要撰寫文件」→ 查看 Documentation 類別
- 「我需要測試功能」→ 查看 Testing 類別

### 方法 2：瀏覽分類目錄

1. 開啟 `skills/` 目錄
2. 選擇您感興趣的分類（如 `web-development/`）
3. 查看該分類下的所有 skills

### 方法 3：使用完整索引

查看 [SKILLS_INDEX.md](./SKILLS_INDEX.md)，透過以下方式檢索：
- **按類別**：Web Development、Documentation、Testing 等
- **按情境**：具體的使用場景
- **按標籤**：frontend、backend、automation 等
- **按難度**：Beginner、Intermediate、Advanced
- **按來源**：Anthropic、Custom、Other

## 📖 如何使用一個 Skill？

### 步驟 1：閱讀 SKILL.md

每個 skill 目錄下都有一個 `SKILL.md` 檔案，內容結構如下：

```
1. 概述 - 快速了解 skill 的用途
2. 適用情境 - 確認是否符合您的需求
3. 使用方式 - 詳細的操作步驟
4. 範例 - 實際案例參考
5. 注意事項 - 重要提醒
6. 相關 Skills - 可能需要搭配使用的其他 skills
```

### 步驟 2：查看範例

進入 `examples/` 資料夾（如果有的話），查看實際的使用案例：
- 程式碼範例
- 截圖示意
- 完整專案範本

### 步驟 3：在專案中應用

根據 skill 的指示，在您的專案中應用：

#### 對於 Anthropic Claude（或支援 MCP 的 AI 助理）
1. 將 skill 目錄複製到您專案的 `.agent/skills/` 目錄下
2. AI 助理會自動讀取並使用該 skill

#### 對於其他 AI 助理
1. 閱讀 `SKILL.md` 的內容
2. 將相關指令或範例提供給 AI 助理
3. 依照 skill 的步驟進行操作

## 🌟 實際範例

### 範例：使用「建立落地頁」Skill

1. **找到 skill**
   ```
   skills/web-development/create-landing-page/SKILL.md
   ```

2. **確認適用情境**
   - ✅ 需要快速建立產品介紹頁面
   - ✅ 需要美觀且響應式的設計
   - ✅ 不需要複雜的後端功能

3. **查看範例**
   ```
   skills/web-development/create-landing-page/examples/
   ├── saas-product/
   ├── portfolio/
   └── event-landing/
   ```

4. **應用到專案**
   - 複製 skill 到 `.agent/skills/`
   - 或直接將指令提供給 AI 助理

## 💡 進階技巧

### 組合多個 Skills

某些任務可能需要組合多個 skills，例如：
- 「建立落地頁」+ 「SEO 優化」+ 「部署到 Vercel」
- 「撰寫 API 文件」+ 「產生測試案例」

在每個 skill 的 `SKILL.md` 中，都有「相關 Skills」章節，建議可搭配使用的其他 skills。

### 自定義 Skill

如果找不到適合的 skill，您可以：
1. 參考 [templates/SKILL_TEMPLATE.md](./templates/SKILL_TEMPLATE.md)
2. 創建自己的 skill
3. 將其放在 `skills/custom/` 目錄下
4. （選擇性）貢獻到倉庫，參見 [CONTRIBUTING.md](./CONTRIBUTING.md)

## ❓ 常見問題

### Q1: Skill 和一般的 prompt 有什麼不同？

**A:** Skill 是結構化且可重複使用的，包含：
- 明確的適用情境與範例
- 完整的步驟說明
- 經過驗證的最佳實踐
- 相關資源與延伸閱讀

一般 prompt 通常是一次性的指令。

### Q2: 我可以修改現有的 skill 嗎？

**A:** 可以！有兩種方式：
1. 在您的專案中直接修改（僅影響您的專案）
2. 提交 PR 改進原始 skill（造福所有使用者）

### Q3: 如何知道哪些 skills 適合一起使用？

**A:** 查看每個 skill 的「相關 Skills」章節，或參考 [SKILLS_INDEX.md](./SKILLS_INDEX.md) 的情境索引。

### Q4: Skill 支援哪些 AI 助理？

**A:** 
- ✅ **完整支援**：Anthropic Claude（透過 MCP）
- ✅ **手動支援**：任何 AI 助理（需要手動提供指令）

## 🚀 下一步

1. **瀏覽現有 skills**：前往 [README.md](./README.md) 查看所有分類
2. **嘗試一個 skill**：選擇一個適合您當前需求的 skill
3. **貢獻您的 skill**：如果您創建了有用的 skill，請參考 [CONTRIBUTING.md](./CONTRIBUTING.md) 分享給社群

## 📞 需要幫助？

如果您在使用過程中遇到問題：
1. 查看 skill 的「注意事項」章節
2. 參考 `examples/` 中的範例
3. 查閱相關文檔
4. 提交 Issue 尋求協助

---

**祝您使用愉快！** 🎉
