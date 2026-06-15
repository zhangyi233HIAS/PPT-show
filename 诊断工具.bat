@echo off
chcp 65001 >nul
echo ==========================================
echo Quartz 部署诊断脚本
echo ==========================================
echo.

:: 1. 检查基础配置
echo [1] 检查 quartz.config.yaml
findstr /C:"baseUrl" "H:\hermesp-agent\quartz\quartz.config.yaml" 2>nul
if errorlevel 1 (
    echo   ❌ 未找到 baseUrl 配置
) else (
    echo   ✅ baseUrl 已配置
)
echo.

:: 2. 检查 Git 状态
echo [2] 检查 Git 状态
cd /d "H:\hermesp-agent\quartz"
git status --short 2>nul
if errorlevel 1 (
    echo   ❌ Git 仓库异常
) else (
    echo   ✅ Git 仓库正常
)
echo.

:: 3. 检查 content 目录
echo [3] 检查 content 目录
set "md_count=0"
for /r "H:\hermesp-agent\quartz\content" %%f in (*.md) do set /a md_count+=1
echo   MD 文件数: %md_count%
if %md_count% LSS 100 (
    echo   ⚠️ 文件数偏少，可能 robocopy 未执行
) else (
    echo   ✅ 文件数正常
)
echo.

:: 4. 检查网络连接
echo [4] 检查 GitHub 连接
curl -s --connect-timeout 5 https://github.com >nul 2>&1
if errorlevel 1 (
    echo   ❌ 无法连接 GitHub
    echo   可能原因: 代理/VPN/防火墙
) else (
    echo   ✅ GitHub 连接正常
)
echo.

:: 5. 检查 Git 远程
echo [5] 检查 Git 远程
git remote -v 2>nul
echo.

:: 6. 检查待推送内容
echo [6] 检查待推送内容
git log origin/v5..HEAD --oneline 2>nul
if errorlevel 1 (
    echo   ⚠️ 无法获取远程状态
) else (
    echo   ✅ 分支已同步
)
echo.

:: 7. 检查 Cloudflare 配置
echo [7] 检查 Cloudflare 相关配置
if exist "H:\hermesp-agent\quartz\.github\workflows\deploy.yml" (
    echo   ✅ GitHub Actions 部署配置存在
) else (
    echo   ❌ 缺少部署配置
)
echo.

:: 8. 检查 ignorePatterns
echo [8] 检查发布排除列表
findstr /C:"wiki/concepts" "H:\hermesp-agent\quartz\quartz.config.yaml" >nul 2>&1
if not errorlevel 1 (
    echo   ❌ wiki/concepts 被排除！笔记不会发布
) else (
    echo   ✅ wiki/concepts 未被排除
)
echo.

echo ==========================================
echo 诊断完成
echo ==========================================
pause
