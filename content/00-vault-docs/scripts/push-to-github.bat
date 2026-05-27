@echo off
REM Obsidian Vault Git 推送脚本
REM 仓库地址: git@github.com:zhangyi233HIAS/obsidian-vault.git

echo ========================================
echo   Obsidian Vault Git 推送
echo ========================================
echo.

REM 切换到 Vault 目录
cd /d "H:\hermesp-agent\03-obsidian-hermes"

REM 配置远程仓库
echo [1/5] 配置远程仓库...
git remote remove origin 2>nul
git remote add origin git@github.com:zhangyi233HIAS/obsidian-vault.git

REM 验证远程仓库
echo.
echo [2/5] 验证远程仓库配置...
git remote -v

REM 重命名主分支
echo.
echo [3/5] 重命名主分支为 main...
git branch -M main

REM 添加所有文件
echo.
echo [4/5] 添加所有文件...
git add .

REM 提交
echo.
echo [5/5] 提交并推送...
git commit -m "Initial Obsidian Vault backup"
git push -u origin main

echo.
echo ========================================
echo   推送完成！
echo ========================================
echo.
echo 仓库地址: https://github.com/zhangyi233HIAS/obsidian-vault
echo.
pause
