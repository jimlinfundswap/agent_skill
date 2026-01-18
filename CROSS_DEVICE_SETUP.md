# 跨電腦使用 Skills 指南

在不同電腦間快速同步和使用您的 agent skills 收集。

---

## 🎯 推薦方案：Git Repository

### 步驟 1：將 agent_skill 推送到 Git（首次設定）

```bash
cd d:\fundswap_github\agent_skill

# 初始化 Git（如果還沒有）
git init

# 加入所有檔案
git add .
git commit -m "初始化 agent_skill 倉庫"

# 推送到 GitHub/GitLab
git remote add origin <your-repo-url>
git push -u origin main
```

### 步驟 2：在新電腦上拉取

```bash
# Clone 到固定位置
# Windows
git clone <your-repo-url> C:\agent_skill

# macOS/Linux
git clone <your-repo-url> ~/agent_skill
```

### 步驟 3：執行一鍵設定腳本

我們提供了快速設定腳本（見下方），會自動：
1. 檢查 agent_skill 位置
2. 建立全域環境變數
3. 設定 Antigravity 全域 skills 路徑
4. 建立快捷指令

---

## 🚀 一鍵設定方案

### Windows 快速設定

執行 `scripts/setup-global.ps1`：

```powershell
# 自動設定全域 skills
.\scripts\setup-global.ps1
```

這會：
- ✅ 設定環境變數 `AGENT_SKILLS_PATH`
- ✅ 建立 PowerShell Profile 別名
- ✅ 配置 Antigravity 全域設定

### macOS/Linux 快速設定

執行 `scripts/setup-global.sh`：

```bash
# 自動設定全域 skills
./scripts/setup-global.sh
```

這會：
- ✅ 更新 `.bashrc` 或 `.zshrc`
- ✅ 建立 shell 別名
- ✅ 配置環境變數

---

## 📦 替代方案

### 方案 1：雲端同步（OneDrive/Dropbox）

將 `agent_skill` 放在雲端同步資料夾：

```
Windows:
  C:\Users\<username>\OneDrive\agent_skill

macOS:
  ~/Library/CloudStorage/OneDrive-Personal/agent_skill
```

然後在每台電腦建立符號連結：

```powershell
# Windows
New-Item -ItemType SymbolicLink `
  -Path "C:\agent_skill" `
  -Target "C:\Users\<username>\OneDrive\agent_skill"
```

```bash
# macOS/Linux
ln -s ~/Library/CloudStorage/OneDrive-Personal/agent_skill ~/agent_skill
```

### 方案 2：私有 Git Server（進階）

使用 GitLab/Gitea 等私有 Git 服務：

優點：
- 完全控制
- 無外洩風險
- 版本控制

---

## 🔧 使用全域 Skills

設定完成後，在任何專案中使用：

### 方法 1：透過環境變數

在專案的 `.antigravity.config.json`：

```json
{
  "skills": {
    "paths": [
      ".agent/skills",
      "${AGENT_SKILLS_PATH}/skills"
    ]
  }
}
```

### 方法 2：使用部署腳本

```powershell
# 快速部署到當前專案
deploy-skills --symlink

# 或指定專案
deploy-skills -TargetProject "D:\my-project" --symlink
```

### 方法 3：直接引用

在專案中使用 `view_file` 工具：

```
請參考 C:\agent_skill\skills\documentation\write-prd\SKILL.md
```

---

## 📝 快速命令參考

設定完成後可用的快速命令：

```bash
# 查看所有可用 skills
list-skills

# 搜尋 skills
search-skills "documentation"

# 部署到專案
deploy-skills --symlink

# 更新 skills
update-skills
```

---

## ✅ 檢查清單

在新電腦上設定時：

- [ ] Clone agent_skill repository
- [ ] 執行 setup-global 腳本
- [ ] 驗證環境變數已設定
- [ ] 測試 list-skills 命令
- [ ] 在測試專案中部署並驗證

---

## 🔄 同步更新

### 保持最新版本

在任何電腦上：

```bash
cd C:\agent_skill  # 或 ~/agent_skill
git pull origin main
```

### 推送您的修改

```bash
cd C:\agent_skill
git add .
git commit -m "新增/更新 skill"
git push origin main
```

---

## 💡 最佳實踐

1. **固定路徑**
   - Windows: `C:\agent_skill`
   - macOS/Linux: `~/agent_skill`

2. **使用 Git**
   - 版本控制所有變更
   - 定期 push/pull 同步

3. **環境變數**
   - 設定 `AGENT_SKILLS_PATH`
   - 所有專案都能引用

4. **自動化**
   - 使用設定腳本
   - 建立 shell 別名

---

## 🆘 常見問題

### Q: 如何在公司電腦和家裡電腦間同步？

**A:** 使用 Git + 私有 repository：
1. 推送到 GitHub Private Repo
2. 在兩台電腦都 clone
3. 定期 pull/push 同步

### Q: 路徑不同怎麼辦？

**A:** 使用環境變數：
- 設定 `AGENT_SKILLS_PATH`
- 專案配置使用 `${AGENT_SKILLS_PATH}`

### Q: 如何確保團隊使用相同版本？

**A:** 
1. 使用 Git Submodule
2. 鎖定特定 commit
3. 在專案文檔說明版本

---

**維護者**：Custom  
**最後更新**：2026-01-18
