# Skills 跨專案部署指南

讓您的 skills 在多個專案中快速可用的完整方案。

---

## 方案概覽

| 方案 | 優點 | 缺點 | 適用情境 |
|------|------|------|---------|
| **Git Submodule** | 版本控制、自動同步 | 需要 Git 知識 | 團隊協作、版本追蹤 |
| **符號連結 (Symlink)** | 即時同步、節省空間 | Windows 需要權限 | 本機開發 |
| **複製特定 Skills** | 簡單直接、獨立管理 | 需手動同步更新 | 只需少數 skills |
| **全域設定** | 一次設定所有專案可用 | 需修改 Antigravity 設定 | 頻繁使用相同 skills |

---

## 方案 1：Git Submodule（推薦）

### 優點
- ✅ 版本控制
- ✅ 團隊成員自動同步
- ✅ 可追蹤 skills 更新歷史

### 設定步驟

#### 1. 在目標專案中加入 submodule

```bash
cd /path/to/your/project

# 加入 agent_skill 作為 submodule
git submodule add https://github.com/your-username/agent_skill .agent/shared-skills

# 初始化並更新 submodule
git submodule update --init --recursive
```

#### 2. 建立符號連結指向 skills

Windows PowerShell:
```powershell
# 在專案的 .agent 目錄下
New-Item -ItemType SymbolicLink -Path ".agent/skills" -Target ".agent/shared-skills/skills"
```

macOS/Linux:
```bash
ln -s .agent/shared-skills/skills .agent/skills
```

#### 3. 團隊成員拉取專案

```bash
git clone <your-project-repo>
cd <your-project>

# 初始化 submodules
git submodule update --init --recursive
```

#### 4. 更新 skills

```bash
cd .agent/shared-skills
git pull origin main
cd ../..
git add .agent/shared-skills
git commit -m "更新 shared skills"
```

---

## 方案 2：符號連結（本機開發）

### 適用情境
- 本機多個專案使用相同 skills
- 即時同步更新

### Windows 設定

```powershell
# 需要管理員權限
# 在目標專案的 .agent 目錄執行

New-Item -ItemType SymbolicLink `
  -Path ".agent/skills" `
  -Target "d:\fundswap_github\agent_skill\skills"
```

### macOS/Linux 設定

```bash
# 在目標專案的 .agent 目錄執行
ln -s ~/projects/agent_skill/skills .agent/skills
```

### 驗證

```bash
# Windows
dir .agent/skills

# macOS/Linux
ls -la .agent/skills
```

---

## 方案 3：複製特定 Skills

### 適用情境
- 只需要少數幾個 skills
- 想要獨立管理特定專案的 skills

### 使用部署腳本

我們提供了自動化腳本（見下方），可以：
1. 選擇要部署的 skills
2. 自動複製到目標專案
3. 保持目錄結構

### 手動複製

```bash
# 複製特定 skill
cp -r d:/fundswap_github/agent_skill/skills/documentation/write-prd \
      /path/to/project/.agent/skills/documentation/
```

---

## 方案 4：全域 Skills 目錄

### 設定 Antigravity 全域 skills 路徑

在 Antigravity 設定中指定共用 skills 目錄。

#### 建立設定檔

在專案根目錄建立 `.antigravity.config.json`：

```json
{
  "skills": {
    "paths": [
      ".agent/skills",
      "d:/fundswap_github/agent_skill/skills"
    ]
  }
}
```

這樣 Antigravity 會同時搜尋：
1. 專案本身的 `.agent/skills`
2. 共用的 `agent_skill/skills`

---

## 自動化部署腳本

### deploy-skills.ps1（Windows）

請參考 `scripts/deploy-skills.ps1`

### deploy-skills.sh（macOS/Linux）

請參考 `scripts/deploy-skills.sh`

---

## 使用建議

### 情境 1：團隊協作專案
**推薦方案**：Git Submodule
- 所有成員使用相同版本
- 可追蹤更新歷史
- 易於同步

### 情境 2：個人多專案
**推薦方案**：符號連結
- 即時同步
- 節省磁碟空間
- 一處更新全域可用

### 情境 3：特定專案需求
**推薦方案**：複製特定 Skills
- 獨立管理
- 可客製化修改
- 不受全域更新影響

### 情境 4：頻繁使用
**推薦方案**：全域設定
- 一次設定
- 所有專案可用
- 靈活性高

---

## 常見問題

### Q1: 如何更新已部署的 skills？

**Git Submodule**:
```bash
cd .agent/shared-skills
git pull origin main
```

**符號連結**:
- 自動同步，無需額外操作

**複製方式**:
- 重新執行部署腳本
- 或手動複製更新的檔案

### Q2: 可以混用多種方案嗎？

可以！例如：
- 使用 submodule 管理核心 skills
- 複製特定 skills 並客製化
- 透過全域設定補充額外 skills

### Q3: 如何確認 skills 已正確載入？

在專案中執行：
```bash
# 檢查 .agent/skills 目錄
ls -la .agent/skills

# 或在 Antigravity 中查看可用 skills
```

---

## 最佳實踐

1. **版本控制**
   - 使用 Git tag 標記 skills 版本
   - 在專案中鎖定特定版本

2. **文檔更新**
   - 在 README 說明使用的 skills
   - 記錄 skills 版本號

3. **定期同步**
   - 定期更新 skills repository
   - 測試新版本的相容性

4. **團隊規範**
   - 統一使用相同的部署方案
   - 建立 skills 使用指南

---

**維護者**：Custom  
**最後更新**：2026-01-18
