# Skills 部署腳本 (Windows PowerShell)
# 用途：快速將 skills 部署到目標專案

param(
    [Parameter(Mandatory=$true)]
    [string]$TargetProject,
    
    [Parameter(Mandatory=$false)]
    [string[]]$Skills = @(),
    
    [Parameter(Mandatory=$false)]
    [switch]$All,
    
    [Parameter(Mandatory=$false)]
    [switch]$Symlink
)

$SourceSkillsPath = "$PSScriptRoot\..\skills"
$TargetSkillsPath = Join-Path $TargetProject ".agent\skills"

Write-Host "=== Skills 部署腳本 ===" -ForegroundColor Cyan
Write-Host "來源路徑: $SourceSkillsPath" -ForegroundColor Gray
Write-Host "目標專案: $TargetProject" -ForegroundColor Gray
Write-Host ""

# 檢查來源路徑
if (-not (Test-Path $SourceSkillsPath)) {
    Write-Host "錯誤：找不到 skills 目錄：$SourceSkillsPath" -ForegroundColor Red
    exit 1
}

# 檢查目標專案
if (-not (Test-Path $TargetProject)) {
    Write-Host "錯誤：目標專案不存在：$TargetProject" -ForegroundColor Red
    exit 1
}

# 建立目標 .agent 目錄
$agentDir = Join-Path $TargetProject ".agent"
if (-not (Test-Path $agentDir)) {
    New-Item -ItemType Directory -Path $agentDir -Force | Out-Null
    Write-Host "✓ 已建立 .agent 目錄" -ForegroundColor Green
}

# 方案 1：建立符號連結
if ($Symlink) {
    Write-Host ""
    Write-Host "使用符號連結模式..." -ForegroundColor Yellow
    
    # 移除舊的 skills 目錄（如果存在）
    if (Test-Path $TargetSkillsPath) {
        Remove-Item $TargetSkillsPath -Recurse -Force
    }
    
    try {
        # 建立符號連結（需要管理員權限）
        New-Item -ItemType SymbolicLink -Path $TargetSkillsPath -Target $SourceSkillsPath -Force | Out-Null
        Write-Host "✓ 已建立符號連結：$TargetSkillsPath -> $SourceSkillsPath" -ForegroundColor Green
        Write-Host ""
        Write-Host "提示：符號連結會自動同步，無需手動更新" -ForegroundColor Cyan
    }
    catch {
        Write-Host "錯誤：無法建立符號連結（可能需要管理員權限）" -ForegroundColor Red
        Write-Host "請以管理員身分執行 PowerShell" -ForegroundColor Yellow
        exit 1
    }
    
    exit 0
}

# 方案 2：複製檔案
Write-Host ""
Write-Host "使用複製檔案模式..." -ForegroundColor Yellow

# 取得所有可用的 skills
$availableSkills = Get-ChildItem -Path $SourceSkillsPath -Directory | ForEach-Object {
    Get-ChildItem -Path $_.FullName -Directory | ForEach-Object {
        [PSCustomObject]@{
            Category = $_.Parent.Name
            Name = $_.Name
            Path = $_.FullName
        }
    }
}

# 顯示可用的 skills
if ($Skills.Count -eq 0 -and -not $All) {
    Write-Host ""
    Write-Host "可用的 Skills：" -ForegroundColor Cyan
    Write-Host ""
    
    $categories = $availableSkills | Group-Object Category
    $index = 1
    $skillIndex = @{}
    
    foreach ($category in $categories) {
        Write-Host "[$($category.Name)]" -ForegroundColor Yellow
        foreach ($skill in $category.Group) {
            Write-Host "  $index. $($skill.Name)" -ForegroundColor White
            $skillIndex[$index] = $skill
            $index++
        }
        Write-Host ""
    }
    
    Write-Host "請選擇要部署的 skills（輸入編號，多個用逗號分隔，或輸入 'all'）："  -ForegroundColor Cyan
    $selection = Read-Host "選擇"
    
    if ($selection -eq "all") {
        $All = $true
    }
    else {
        $selectedNumbers = $selection -split ',' | ForEach-Object { $_.Trim() }
        $Skills = $selectedNumbers | ForEach-Object {
            $num = [int]$_
            if ($skillIndex.ContainsKey($num)) {
                "$($skillIndex[$num].Category)/$($skillIndex[$num].Name)"
            }
        }
    }
}

# 部署 skills
$deployedCount = 0

if ($All) {
    Write-Host ""
    Write-Host "部署所有 skills..." -ForegroundColor Yellow
    
    foreach ($skill in $availableSkills) {
        $targetPath = Join-Path $TargetSkillsPath "$($skill.Category)\$($skill.Name)"
        
        # 建立目標目錄
        if (-not (Test-Path (Split-Path $targetPath))) {
            New-Item -ItemType Directory -Path (Split-Path $targetPath) -Force | Out-Null
        }
        
        # 複製 skill
        Copy-Item -Path $skill.Path -Destination $targetPath -Recurse -Force
        Write-Host "✓ $($skill.Category)/$($skill.Name)" -ForegroundColor Green
        $deployedCount++
    }
}
else {
    Write-Host ""
    Write-Host "部署選定的 skills..." -ForegroundColor Yellow
    
    foreach ($skillPath in $Skills) {
        $parts = $skillPath -split '/'
        if ($parts.Count -ne 2) {
            Write-Host "⚠ 跳過無效路徑：$skillPath" -ForegroundColor Yellow
            continue
        }
        
        $category = $parts[0]
        $skillName = $parts[1]
        
        $sourcePath = Join-Path $SourceSkillsPath "$category\$skillName"
        $targetPath = Join-Path $TargetSkillsPath "$category\$skillName"
        
        if (-not (Test-Path $sourcePath)) {
            Write-Host "⚠ 找不到 skill：$skillPath" -ForegroundColor Yellow
            continue
        }
        
        # 建立目標目錄
        if (-not (Test-Path (Split-Path $targetPath))) {
            New-Item -ItemType Directory -Path (Split-Path $targetPath) -Force | Out-Null
        }
        
        # 複製 skill
        Copy-Item -Path $sourcePath -Destination $targetPath -Recurse -Force
        Write-Host "✓ $skillPath" -ForegroundColor Green
        $deployedCount++
    }
}

Write-Host ""
Write-Host "=== 部署完成 ===" -ForegroundColor Cyan
Write-Host "已部署 $deployedCount 個 skills 到：$TargetSkillsPath" -ForegroundColor Green
Write-Host ""
Write-Host "使用方式：" -ForegroundColor Cyan
Write-Host "  在專案中透過 Antigravity 使用這些 skills" -ForegroundColor White
Write-Host "  或使用 view_file 工具查看 SKILL.md 檔案" -ForegroundColor White
