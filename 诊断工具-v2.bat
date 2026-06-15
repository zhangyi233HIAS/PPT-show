@echo off
chcp 65001 >nul
echo ==========================================
echo Quartz 部署诊断脚本 v2
echo ==========================================
echo.

:: 1. Git 状态
echo [1] Git 状态
cd /d "H:\hermesp-agent\quartz"
git log --oneline -3
echo.

:: 2. 待推送内容
echo [2] 待推送内容
git log origin/v5..HEAD --oneline 2>nul
if errorlevel 1 (
    echo   ⚠️ 无法获取远程状态
) else (
    echo   (空=已同步到 GitHub)
)
echo.

:: 3. 跟踪文件数
echo [3] 跟踪文件数
for /f %%i in ('git ls-files ^| find /c /v ""') do set tracked=%%i
echo   Git 跟踪: %tracked% 个文件
echo.

:: 4. content 目录
echo [4] content 目录
dir /s /b "H:\hermesp-agent\quartz\content\*.md" 2>nul | find /c /v "" >nul
if errorlevel 1 (
    echo   ❌ content 目录为空
) else (
    echo   ✅ content 目录有文件
)
echo.

:: 5. .gitignore 检查
echo [5] .gitignore 检查
findstr /C:"wiki" "H:\hermesp-agent\quartz\.gitignore" >nul 2>&1
if not errorlevel 1 (
    echo   ⚠️ wiki 被排除（不会发布）
)
findstr /C:"*.png" "H:\hermesp-agent\quartz\.gitignore" >nul 2>&1
if not errorlevel 1 (
    echo   ⚠️ 图片被排除
)
echo.

:: 6. 网络检查
echo [6] 网络检查
curl -s --connect-timeout 5 -o nul -w "GitHub: %%{http_code}\n" https://github.com 2>nul
curl -s --connect-timeout 5 -o nul -w "Cloudflare: %%{http_code}\n" https://mypptshow2.buithanhlan498.workers.dev 2>nul
echo.

:: 7. 部署目标检查
echo [7] 部署目标
echo   GitHub Actions -> GitHub Pages
echo   Cloudflare Workers -> mypptshow2.buithanhlan498.workers.dev
echo   (两个独立系统，需要分别检查)
echo.

:: 8. 诊断建议
echo ==========================================
echo 诊断建议:
echo ==========================================
echo.
echo 如果 GitHub 已同步但 Cloudflare 未更新:
echo   1. 登录 https://dash.cloudflare.com
echo   2. 找到 mypptshow2 Workers
echo   3. 检查 Deployments 日志
echo   4. 确认连接的是 v5 分支
echo.
echo 如果构建失败:
echo   - 检查 Cloudflare Workers 构建日志
echo   - 可能是内容过大或格式问题
echo.
echo ==========================================
pause
