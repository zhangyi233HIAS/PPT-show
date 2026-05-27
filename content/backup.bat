@echo off
REM Obsidian Vault Git 备份脚本
REM 使用方法：双击运行此脚本

echo ========================================
echo   Obsidian Vault Git 备份
echo ========================================
echo.

REM 切换到 Vault 目录
cd /d "H:\hermesp-agent\03-obsidian-hermes"

REM 检查 Git 状态
echo [1/4] 检查 Git 状态...
git status

echo.
echo [2/4] 添加所有更改...
git add .

echo.
echo [3/4] 提交更改...
set /p commit_msg="请输入提交信息（直接回车使用默认信息）: "
if "%commit_msg%"=="" set commit_msg=Vault backup: %date% %time%
git commit -m "%commit_msg%"

echo.
echo [4/4] 推送到远程仓库...
git push

echo.
echo ========================================
echo   备份完成！
echo ========================================
pause
