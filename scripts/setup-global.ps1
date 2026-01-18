# Agent Skills Quick Setup
# Simple version without encoding issues

param(
    [switch]$Silent
)

$SkillsPath = Split-Path $PSScriptRoot -Parent

Write-Host "=== Agent Skills Setup ===" -ForegroundColor Cyan
Write-Host "Skills Path: $SkillsPath" -ForegroundColor Yellow
Write-Host ""

# 1. Set Environment Variable
Write-Host "Step 1: Setting environment variable..." -ForegroundColor Cyan
[Environment]::SetEnvironmentVariable("AGENT_SKILLS_PATH", $SkillsPath, [EnvironmentVariableTarget]::User)
Write-Host "OK Environment variable set: AGENT_SKILLS_PATH" -ForegroundColor Green

# 2. Update PowerShell Profile
Write-Host ""
Write-Host "Step 2: Updating PowerShell Profile..." -ForegroundColor Cyan

$profilePath = $PROFILE.CurrentUserAllHosts
$profileDir = Split-Path $profilePath

if (-not (Test-Path $profileDir)) {
    New-Item -ItemType Directory -Path $profileDir -Force | Out-Null
}

$profileConfig = @"

# Agent Skills Configuration
`$env:AGENT_SKILLS_PATH = "$SkillsPath"

function list-skills {
    Get-ChildItem "`$env:AGENT_SKILLS_PATH\skills" -Directory | ForEach-Object {
        Write-Host "[`$(`$_.Name)]" -ForegroundColor Yellow
        Get-ChildItem `$_.FullName -Directory | Select-Object -First 3 | ForEach-Object {
            Write-Host "  - `$(`$_.Name)"
        }
    }
}

function deploy-skills {
    & "`$env:AGENT_SKILLS_PATH\scripts\deploy-skills.ps1" @args
}

function update-skills {
    Push-Location "`$env:AGENT_SKILLS_PATH"
    git pull
    Pop-Location
}

"@

if (Test-Path $profilePath) {
    $content = Get-Content $profilePath -Raw
    if ($content -notlike "*Agent Skills*") {
        Add-Content -Path $profilePath -Value $profileConfig
        Write-Host "OK Profile updated: $profilePath" -ForegroundColor Green
    }
    else {
        Write-Host "OK Profile already configured" -ForegroundColor Green
    }
}
else {
    Set-Content -Path $profilePath -Value $profileConfig
    Write-Host "OK Profile created: $profilePath" -ForegroundColor Green
}

# 3. Create config template
Write-Host ""
Write-Host "Step 3: Creating config template..." -ForegroundColor Cyan

$configTemplate = @"
{
  "skills": {
    "paths": [
      ".agent/skills",
      "`${AGENT_SKILLS_PATH}/skills"
    ]
  }
}
"@

Set-Content -Path "$SkillsPath\.antigravity.config.template.json" -Value $configTemplate
Write-Host "OK Config template created" -ForegroundColor Green

# Summary
Write-Host ""
Write-Host "=== Setup Complete ===" -ForegroundColor Cyan
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "  1. Restart PowerShell or run: . `$PROFILE"
Write-Host "  2. Try: list-skills"
Write-Host "  3. Deploy to project: deploy-skills -TargetProject 'path' -Symlink"
Write-Host ""
Write-Host "Environment: AGENT_SKILLS_PATH = $SkillsPath" -ForegroundColor White
Write-Host ""

if (-not $Silent) {
    $response = Read-Host "Reload Profile now? (Y/N)"
    if ($response -eq "Y" -or $response -eq "y") {
        . $PROFILE
        Write-Host ""
        Write-Host "OK Profile reloaded!" -ForegroundColor Green
        Write-Host "Try: list-skills" -ForegroundColor Cyan
    }
}
