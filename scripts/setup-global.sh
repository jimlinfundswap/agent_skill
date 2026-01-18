#!/bin/bash
# 全域 Skills 設定腳本 (macOS/Linux)
# 用途：在新電腦上快速設定全域 agent skills

set -e

# 顏色定義
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo -e "${CYAN}=== Agent Skills 全域設定 ===${NC}"
echo ""

# 自動偵測 skills 路徑
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SKILLS_PATH="$(dirname "$SCRIPT_DIR")"

echo -e "${YELLOW}自動偵測 Skills 路徑：$SKILLS_PATH${NC}"

# 驗證路徑
if [ ! -d "$SKILLS_PATH/skills" ]; then
    echo -e "${RED}錯誤：找不到 skills 目錄${NC}"
    exit 1
fi

echo -e "${GREEN}✓ Skills 目錄已確認：$SKILLS_PATH/skills${NC}"
echo ""

# 偵測 shell
if [ -n "$ZSH_VERSION" ]; then
    SHELL_RC="$HOME/.zshrc"
    SHELL_NAME="zsh"
elif [ -n "$BASH_VERSION" ]; then
    SHELL_RC="$HOME/.bashrc"
    SHELL_NAME="bash"
else
    SHELL_RC="$HOME/.profile"
    SHELL_NAME="sh"
fi

echo -e "${CYAN}步驟 1：設定環境變數...${NC}"
echo -e "使用 shell 配置：$SHELL_RC"

# Shell 配置內容
SHELL_CONFIG="
# === Agent Skills 設定 ===
export AGENT_SKILLS_PATH=\"$SKILLS_PATH\"

# 快捷命令
alias list-skills='find \"\$AGENT_SKILLS_PATH/skills\" -mindepth 2 -maxdepth 2 -type d | sed \"s|.*/skills/||\" | sort'

search-skills() {
    find \"\$AGENT_SKILLS_PATH/skills\" -type d -iname \"*\$1*\" | sed \"s|.*/skills/||\"
}

deploy-skills() {
    \"\$AGENT_SKILLS_PATH/scripts/deploy-skills.sh\" \"\$@\"
}

update-skills() {
    cd \"\$AGENT_SKILLS_PATH\" && git pull origin main && cd -
}

echo -e \"${GREEN}Agent Skills 已載入 (\$AGENT_SKILLS_PATH)${NC}\"
"

# 檢查是否已有設定
if [ -f "$SHELL_RC" ]; then
    if grep -q "Agent Skills" "$SHELL_RC"; then
        echo -e "${GREEN}✓ Shell 配置已包含 Agent Skills 設定${NC}"
    else
        echo "$SHELL_CONFIG" >> "$SHELL_RC"
        echo -e "${GREEN}✓ 已更新 Shell 配置：$SHELL_RC${NC}"
    fi
else
    echo "$SHELL_CONFIG" > "$SHELL_RC"
    echo -e "${GREEN}✓ 已建立 Shell 配置：$SHELL_RC${NC}"
fi

# 建立全域配置範本
echo ""
echo -e "${CYAN}步驟 2：建立全域配置範本...${NC}"

cat > "$SKILLS_PATH/.antigravity.config.template.json" << EOF
{
  "skills": {
    "paths": [
      ".agent/skills",
      "\${AGENT_SKILLS_PATH}/skills"
    ]
  }
}
EOF

echo -e "${GREEN}✓ 已建立配置範本${NC}"

# 設定腳本權限
chmod +x "$SKILLS_PATH/scripts"/*.sh 2>/dev/null || true

# 完成
echo ""
echo -e "${CYAN}=== 設定完成！===${NC}"
echo ""
echo -e "${YELLOW}下一步：${NC}"
echo -e "${NC}  1. 重新載入 shell 配置：${NC}"
echo -e "${NC}     source $SHELL_RC${NC}"
echo ""
echo -e "${NC}  2. 測試快捷命令：${NC}"
echo -e "${NC}     list-skills              # 列出所有 skills${NC}"
echo -e "${NC}     search-skills doc        # 搜尋 skills${NC}"
echo -e "${NC}     deploy-skills --symlink  # 部署到專案${NC}"
echo ""
echo -e "${NC}  3. 在專案中使用（複製 .antigravity.config.template.json）${NC}"
echo ""
echo -e "${YELLOW}環境變數：${NC}"
echo -e "${NC}  AGENT_SKILLS_PATH = $SKILLS_PATH${NC}"
echo ""

# 詢問是否重新載入
read -p "是否立即重新載入配置？(y/N): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    source "$SHELL_RC"
    echo ""
    echo -e "${GREEN}✓ 配置已重新載入！${NC}"
    echo ""
    echo -e "${CYAN}試試執行：list-skills${NC}"
fi
