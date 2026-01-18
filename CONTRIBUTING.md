# 貢獻指南

感謝您願意為 Agent Skills 倉庫做出貢獻！本指南將幫助您了解如何新增或改進 skills。

## 🎯 貢獻方式

您可以透過以下方式貢獻：

1. **新增新的 Skill** - 分享您創建的有用 skill
2. **改進現有 Skill** - 修正錯誤、補充範例、優化說明
3. **更新文檔** - 改進 README、索引或指南
4. **回報問題** - 提交 Issues 回報錯誤或建議改進

## 📝 新增 Skill 的流程

### 步驟 1：確認 Skill 的價值

在開始之前，請確認：
- ✅ 這個 skill 解決了實際的問題
- ✅ 具有可重複使用性
- ✅ 有明確的適用情境
- ✅ 尚未存在類似的 skill（查看 [SKILLS_INDEX.md](./SKILLS_INDEX.md)）

### 步驟 2：選擇適當的分類

將 skill 放在最合適的分類目錄下：

- `skills/web-development/` - 網頁開發
- `skills/documentation/` - 文件撰寫
- `skills/testing/` - 測試與驗證
- `skills/deployment/` - 部署與維運
- `skills/database/` - 資料庫操作
- `skills/api-integration/` - API 整合
- `skills/code-review/` - 程式碼審查
- `skills/refactoring/` - 重構
- `skills/debugging/` - 除錯
- `skills/custom/` - 自定義（如果不確定分類）

如果需要新的分類，請在 Issue 中提出討論。

### 步驟 3：建立 Skill 目錄結構

```
skills/[category]/[skill-name]/
├── SKILL.md              # 必需：主要 skill 說明檔
├── examples/             # 必需：至少一個範例
│   ├── example-1.md
│   └── screenshots/      # （選用）範例截圖
├── scripts/              # （選用）輔助腳本
└── resources/            # （選用）其他資源
```

### 步驟 4：使用模板撰寫 SKILL.md

複製 [templates/SKILL_TEMPLATE.md](./templates/SKILL_TEMPLATE.md) 作為起點：

```bash
cp templates/SKILL_TEMPLATE.md skills/[category]/[skill-name]/SKILL.md
```

### 步驟 5：填寫必要內容

#### YAML Frontmatter（必填）

```yaml
---
name: "Skill 的明確名稱"
category: "分類名稱"
source: "Anthropic | Custom | Other"
version: "1.0.0"
author: "您的名字或 GitHub 帳號"
tags:
  - 相關標籤1
  - 相關標籤2
scenarios:
  - "明確的適用情境 1"
  - "明確的適用情境 2"
difficulty: "beginner | intermediate | advanced"
updated: "2026-01-18"
---
```

#### Markdown 內容（必填章節）

1. **概述**：1-2 段簡短說明
2. **適用情境**：至少 3 個具體情境
3. **使用方式**：詳細的步驟說明
4. **範例**：至少 1 個完整範例
5. **注意事項**：重要提醒

### 步驟 6：新增範例

在 `examples/` 目錄下至少提供一個完整範例：

```markdown
# 範例：[範例名稱]

## 情境說明
具體描述這個範例解決的問題...

## 實際操作
詳細步驟...

## 程式碼
```語言
程式碼內容...
```

## 結果
展示執行結果...
```

### 步驟 7：更新索引檔案

在 [SKILLS_INDEX.md](./SKILLS_INDEX.md) 中新增您的 skill：

1. 在對應的「按類別索引」章節新增一列
2. 在「按情境索引」中新增情境對應
3. 在「按標籤索引」中新增標籤對應
4. 在「按難度索引」中新增難度對應
5. 在「按來源索引」中新增來源對應

### 步驟 8：提交 Pull Request

1. Fork 本倉庫
2. 創建新分支：`git checkout -b add-skill-[skill-name]`
3. 提交變更：`git commit -m "新增 [skill-name] skill"`
4. 推送分支：`git push origin add-skill-[skill-name]`
5. 提交 Pull Request

## ✅ Skill 品質檢查清單

在提交前，請確認：

### 內容完整性
- [ ] YAML frontmatter 所有必填欄位都已填寫
- [ ] 有清楚的概述（1-2 段）
- [ ] 至少 3 個明確的適用情境
- [ ] 詳細的使用步驟
- [ ] 至少 1 個完整範例
- [ ] 有注意事項或重要提醒

### 範例品質
- [ ] 至少有 1 個 `examples/` 範例
- [ ] 範例具有實際參考價值
- [ ] 範例包含完整的情境說明
- [ ] 範例包含程式碼或具體步驟
- [ ] 範例包含預期結果

### 文檔品質
- [ ] 使用繁體中文撰寫
- [ ] 語言清晰易懂
- [ ] 格式正確（Markdown）
- [ ] 無錯字或語法錯誤
- [ ] 連結都正確有效

### 結構正確性
- [ ] 目錄結構符合規範
- [ ] 檔案命名符合規範（小寫、連字號分隔）
- [ ] 已更新 SKILLS_INDEX.md
- [ ] 已更新 README.md（如果需要）

## 🔧 改進現有 Skill

如果您想改進現有的 skill：

1. **小幅修正**（錯字、格式等）
   - 直接提交 PR，說明修正內容

2. **重大變更**（新增章節、修改邏輯等）
   - 先開 Issue 討論變更理由
   - 獲得共識後再提交 PR

3. **版本更新**
   - 修改 YAML frontmatter 中的 `version` 欄位
   - 更新 `updated` 日期
   - 在 PR 中說明變更內容

## 📋 Skill 命名規範

### 目錄命名
- 使用小寫英文
- 單字間用連字號 `-` 分隔
- 簡短且描述性
- 範例：`create-landing-page`、`write-api-docs`

### Skill 名稱（YAML 中的 name）
- 使用繁體中文
- 清楚描述功能
- 範例：「建立落地頁」、「撰寫 API 文件」

## 🏷️ 標籤使用指南

選擇適當的標籤幫助使用者找到 skill：

### 技術領域
- `frontend`、`backend`、`fullstack`
- `mobile`、`desktop`、`web`

### 功能類型
- `documentation`、`testing`、`deployment`
- `automation`、`optimization`

### 技術棧
- `react`、`vue`、`python`、`node`
- `sql`、`nosql`、`api`

### 特性
- `security`、`performance`、`accessibility`
- `responsive`、`seo`

## 🚫 不接受的貢獻

以下類型的 skill 可能不會被接受：

- ❌ 過於特定，無法重複使用
- ❌ 缺少範例或說明不清
- ❌ 違反最佳實踐或安全規範
- ❌ 與現有 skill 高度重複
- ❌ 包含侵權內容或惡意程式碼

## 📞 需要協助？

如果您在貢獻過程中遇到問題：

1. 查看 [QUICK_START.md](./QUICK_START.md) 了解基本概念
2. 參考現有的 skills 作為範本
3. 開 Issue 詢問問題
4. 聯繫維護者

## 🙏 致謝

感謝所有貢獻者讓這個倉庫變得更好！您的貢獻將幫助無數開發者提升工作效率。

---

**準備好開始貢獻了嗎？** 前往 [templates/SKILL_TEMPLATE.md](./templates/SKILL_TEMPLATE.md) 開始創建您的第一個 skill！
