# Agent Skills 收集倉庫

一個精心整理的 AI Agent Skills 資料庫，幫助您快速擴展 AI 助理的專業能力。

## 💡 什麼是 Agent Skill？

Agent Skill 是一套結構化的指令、範例與最佳實踐，用於擴展 AI 助理在特定領域的能力。每個 skill 都包含：
- **明確的適用情境** — 什麼時候需要用到
- **詳細的使用說明** — 如何正確使用
- **實際範例** — 具體的使用案例
- **注意事項** — 使用時的關鍵要點

## 📊 快速總覽

- **Skills 總數**：32 個
- **主要分類**：網頁開發、資料庫設計、文件撰寫、測試驗證、除錯分析、AI/ML 工具、生產力工具、DevOps 工具、協作與架構、Agent 工具
- **來源**：Anthropic 官方（16）、OpenAI 官方（3）、Skill Creator AI（4）、Obra Superpowers（3）、HuggingFace 官方（1）、自定義（3）、社群貢獻（2）

## 🎯 常見使用場景

不確定該用哪個 skill？從您的需求出發：

### 需要建立網站或落地頁？
→ [**建立美觀落地頁**](./skills/web-development/create-landing-page/SKILL.md) — 快速建立專業級響應式網站（產品介紹、行銷頁面）  
→ [**UI/UX Pro Max**](./skills/web-development/ui-ux-pro-max/SKILL.md) — 互動式應用介面設計（Dashboard、SaaS、電商）

### 需要撰寫產品文件？
→ [**撰寫產品需求文件 (PRD)**](./skills/documentation/write-prd/SKILL.md) — 商業導向的需求文件  
→ [**撰寫規格文件**](./skills/documentation/write-specification/SKILL.md) — PM 視角的功能規格

### 需要設計視覺藝術？
→ [**Canvas Design**](./skills/web-development/canvas-design/SKILL.md) — 專業級視覺藝術創作（海報、PDF/PNG 輸出）  
→ [**Theme Factory**](./skills/web-development/theme-factory/SKILL.md) — 品牌視覺規範與設計系統

### 需要測試或除錯？
→ [**Systematic Debugging**](./skills/debugging/systematic-debugging/SKILL.md) — 專家級四階段除錯流程 (New!)
→ [**Code Debugging Analysis**](./skills/debugging/code-debugging-analysis/SKILL.md) — 系統化除錯方法論 (Intermediate)
→ [**TDD**](./skills/testing/test-driven-development/SKILL.md) — 嚴格的紅/綠/重構開發模式 (New!)
→ [**QA Regression**](./skills/testing/qa-regression/SKILL.md) — Playwright 回歸測試架構

### 需要架構設計？
→ [**Brainstorming**](./skills/collaboration/brainstorming/SKILL.md) — 蘇格拉底式提問引導設計 (New!)
→ [**Database Design**](./skills/development/database-design/SKILL.md) — 資料庫正規化與遷移策略

### 需要生成 Office 文件？
→ [**DOCX**](./skills/documentation/docx/SKILL.md) / [**PDF**](./skills/documentation/pdf/SKILL.md) / [**PPTX**](./skills/documentation/pptx/SKILL.md) / [**XLSX**](./skills/documentation/xlsx/SKILL.md) — 文件、簡報、試算表生成

### 需要使用 HuggingFace Hub？
→ [**HuggingFace CLI**](./skills/ai-ml-tools/hugging-face-cli/SKILL.md) — 下載/上傳模型、管理資源、雲端運算

### 需要規劃複雜任務？
→ [**Create Plan**](./skills/productivity/create-plan/SKILL.md) — 將需求轉換為結構化的執行計畫

### 需要自動化 GitHub 開發流程？
→ [**Fix failing CI**](./skills/devops/gh-fix-ci/SKILL.md) — 自動分析與修復 CI 錯誤
→ [**Address PR comments**](./skills/devops/gh-address-comments/SKILL.md) — 快速處理 Code Review 意見

### 需要設計資料庫架構？
→ [**Database Design**](./skills/development/database-design/SKILL.md) — 正規化設計、索引優化與遷移策略

### 需要提升開發品質？
→ [**Code Documentation**](./skills/productivity/code-documentation/SKILL.md) — 撰寫高品質程式碼文件與註解
→ [**Ask Questions**](./skills/productivity/ask-questions-if-underspecified/SKILL.md) — 主動釐清模糊需求，避免重工

**📚 查看全部分類** → [完整索引](./SKILLS_INDEX.md)（按類別、情境、難度、來源檢索）

## 🆕 最新 Skills

- **[Systematic Debugging](./skills/debugging/systematic-debugging/SKILL.md)** (2026-01-19)  
  源自 obra/superpowers 的專家級除錯指引，採用「根本原因分析法」四階段流程

- **[Brainstorming](./skills/collaboration/brainstorming/SKILL.md)** (2026-01-19)  
  蘇格拉底式提問引導設計，幫助將模糊想法轉化為具體架構

## 🤔 如何選擇適合的 Skill？

1. **從需求出發**：先看「常見使用場景」找到相關 skills
2. **查看詳細說明**：點進 `SKILL.md` 了解適用情境與使用方式
3. **檢查難度等級**：
   - 🟢 **Beginner** — 適合初次使用
   - 🟡 **Intermediate** — 需要一定背景知識
   - 🔴 **Advanced** — 適合進階使用者
4. **瀏覽範例**：參考 `examples/` 資料夾中的實際案例
5. **需要更多選擇？**→ 前往 [完整索引](./SKILLS_INDEX.md) 查看所有 25 個 skills

## 🚀 快速開始

1. **瀏覽場景** — 從上方的常見場景選擇您的需求
2. **查看 skill** — 點進連結，閱讀 `SKILL.md` 檔案
3. **參考範例** — 查看 `examples/` 資料夾中的使用案例
4. **開始使用** — 依照說明在您的 AI 對話中使用 skill

## 📖 完整文檔

- **[完整索引](./SKILLS_INDEX.md)** — 詳細目錄（按類別、難度、來源查詢，不含重複場景）
- **[快速開始](./QUICK_START.md)** — 學習如何使用這個倉庫
- **[部署指南](./DEPLOYMENT_GUIDE.md)** — 如何在不同專案中使用 skills
- **[貢獻指南](./CONTRIBUTING.md)** — 了解如何新增或改進 skills

## 🤝 貢獻

歡迎貢獻新的 skills 或改進現有的 skills！請參閱 [貢獻指南](./CONTRIBUTING.md) 了解詳情。

---

**最後更新**：2026-01-18
