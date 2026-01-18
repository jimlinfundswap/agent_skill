#!/bin/bash
# Skills 部署腳本 (macOS/Linux)
# 用途：快速將 skills 部署到目標專案

set -e

# 顏色定義
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# 取得腳本所在目錄
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SOURCE_SKILLS_PATH="$SCRIPT_DIR/../skills"

# 顯示使用說明
usage() {
    echo -e "${CYAN}=== Skills 部署腳本 ===${NC}"
    echo ""
    echo "用法:"
    echo "  $0 <目標專案路徑> [選項]"
    echo ""
    echo "選項:"
    echo "  --all           部署所有 skills"
    echo "  --symlink       使用符號連結（推薦）"
    echo "  --skills        指定要部署的 skills（格式：category/skill-name）"
    echo ""
    echo "範例:"
    echo "  $0 /path/to/project --symlink"
    echo "  $0 /path/to/project --all"
    echo "  $0 /path/to/project --skills documentation/write-prd,web-development/create-landing-page"
    exit 1
}

# 檢查參數
if [ $# -lt 1 ]; then
    usage
fi

TARGET_PROJECT="$1"
shift

# 解析選項
USE_SYMLINK=false
DEPLOY_ALL=false
SELECTED_SKILLS=()

while [[ $# -gt 0 ]]; do
    case $1 in
        --symlink)
            USE_SYMLINK=true
            shift
            ;;
        --all)
            DEPLOY_ALL=true
            shift
            ;;
        --skills)
            IFS=',' read -ra SELECTED_SKILLS <<< "$2"
            shift 2
            ;;
        *)
            echo -e "${RED}未知選項: $1${NC}"
            usage
            ;;
    esac
done

echo -e "${CYAN}=== Skills 部署腳本 ===${NC}"
echo -e "${NC}來源路徑: $SOURCE_SKILLS_PATH${NC}"
echo -e "${NC}目標專案: $TARGET_PROJECT${NC}"
echo ""

# 檢查來源路徑
if [ ! -d "$SOURCE_SKILLS_PATH" ]; then
    echo -e "${RED}錯誤：找不到 skills 目錄：$SOURCE_SKILLS_PATH${NC}"
    exit 1
fi

# 檢查目標專案
if [ ! -d "$TARGET_PROJECT" ]; then
    echo -e "${RED}錯誤：目標專案不存在：$TARGET_PROJECT${NC}"
    exit 1
fi

AGENT_DIR="$TARGET_PROJECT/.agent"
TARGET_SKILLS_PATH="$AGENT_DIR/skills"

# 建立 .agent 目錄
if [ ! -d "$AGENT_DIR" ]; then
    mkdir -p "$AGENT_DIR"
    echo -e "${GREEN}✓ 已建立 .agent 目錄${NC}"
fi

# 方案 1：建立符號連結
if [ "$USE_SYMLINK" = true ]; then
    echo ""
    echo -e "${YELLOW}使用符號連結模式...${NC}"
    
    # 移除舊的 skills 目錄
    if [ -e "$TARGET_SKILLS_PATH" ]; then
        rm -rf "$TARGET_SKILLS_PATH"
    fi
    
    # 建立符號連結
    ln -s "$SOURCE_SKILLS_PATH" "$TARGET_SKILLS_PATH"
    echo -e "${GREEN}✓ 已建立符號連結：$TARGET_SKILLS_PATH -> $SOURCE_SKILLS_PATH${NC}"
    echo ""
    echo -e "${CYAN}提示：符號連結會自動同步，無需手動更新${NC}"
    exit 0
fi

# 方案 2：複製檔案
echo ""
echo -e "${YELLOW}使用複製檔案模式...${NC}"

# 建立目標目錄
mkdir -p "$TARGET_SKILLS_PATH"

DEPLOYED_COUNT=0

# 取得所有可用的 skills
get_available_skills() {
    find "$SOURCE_SKILLS_PATH" -mindepth 2 -maxdepth 2 -type d | while read -r skill_path; do
        category=$(basename "$(dirname "$skill_path")")
        skill_name=$(basename "$skill_path")
        echo "$category/$skill_name"
    done
}

# 部署所有 skills
if [ "$DEPLOY_ALL" = true ]; then
    echo ""
    echo -e "${YELLOW}部署所有 skills...${NC}"
    
    while IFS= read -r skill; do
        category=$(echo "$skill" | cut -d'/' -f1)
        skill_name=$(echo "$skill" | cut -d'/' -f2)
        
        source_path="$SOURCE_SKILLS_PATH/$category/$skill_name"
        target_path="$TARGET_SKILLS_PATH/$category/$skill_name"
        
        mkdir -p "$TARGET_SKILLS_PATH/$category"
        cp -r "$source_path" "$target_path"
        
        echo -e "${GREEN}✓ $skill${NC}"
        ((DEPLOYED_COUNT++))
    done < <(get_available_skills)
    
elif [ ${#SELECTED_SKILLS[@]} -gt 0 ]; then
    echo ""
    echo -e "${YELLOW}部署選定的 skills...${NC}"
    
    for skill in "${SELECTED_SKILLS[@]}"; do
        category=$(echo "$skill" | cut -d'/' -f1)
        skill_name=$(echo "$skill" | cut -d'/' -f2)
        
        source_path="$SOURCE_SKILLS_PATH/$category/$skill_name"
        target_path="$TARGET_SKILLS_PATH/$category/$skill_name"
        
        if [ ! -d "$source_path" ]; then
            echo -e "${YELLOW}⚠ 找不到 skill：$skill${NC}"
            continue
        fi
        
        mkdir -p "$TARGET_SKILLS_PATH/$category"
        cp -r "$source_path" "$target_path"
        
        echo -e "${GREEN}✓ $skill${NC}"
        ((DEPLOYED_COUNT++))
    done
else
    # 互動式選擇
    echo ""
    echo -e "${CYAN}可用的 Skills：${NC}"
    echo ""
    
    skills_array=()
    index=1
    
    while IFS= read -r skill; do
        category=$(echo "$skill" | cut -d'/' -f1)
        skill_name=$(echo "$skill" | cut -d'/' -f2)
        
        echo -e "${NC}  $index. [$category] $skill_name${NC}"
        skills_array+=("$skill")
        ((index++))
    done < <(get_available_skills | sort)
    
    echo ""
    echo -e "${CYAN}請選擇要部署的 skills（輸入編號，多個用逗號分隔，或輸入 'all'）：${NC}"
    read -r selection
    
    if [ "$selection" = "all" ]; then
        DEPLOY_ALL=true
        exec "$0" "$TARGET_PROJECT" --all
    else
        IFS=',' read -ra selected_indices <<< "$selection"
        for idx in "${selected_indices[@]}"; do
            idx=$(echo "$idx" | tr -d ' ')
            if [ "$idx" -ge 1 ] && [ "$idx" -le "${#skills_array[@]}" ]; then
                skill="${skills_array[$((idx-1))]}"
                category=$(echo "$skill" | cut -d'/' -f1)
                skill_name=$(echo "$skill" | cut -d'/' -f2)
                
                source_path="$SOURCE_SKILLS_PATH/$category/$skill_name"
                target_path="$TARGET_SKILLS_PATH/$category/$skill_name"
                
                mkdir -p "$TARGET_SKILLS_PATH/$category"
                cp -r "$source_path" "$target_path"
                
                echo -e "${GREEN}✓ $skill${NC}"
                ((DEPLOYED_COUNT++))
            fi
        done
    fi
fi

echo ""
echo -e "${CYAN}=== 部署完成 ===${NC}"
echo -e "${GREEN}已部署 $DEPLOYED_COUNT 個 skills 到：$TARGET_SKILLS_PATH${NC}"
echo ""
echo -e "${CYAN}使用方式：${NC}"
echo -e "${NC}  在專案中透過 Antigravity 使用這些 skills${NC}"
echo -e "${NC}  或使用 view_file 工具查看 SKILL.md 檔案${NC}"
