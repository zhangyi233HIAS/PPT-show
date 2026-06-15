---
title: Obsidian 笔记云端部署方案
created: 2026-05-21
updated: 2026-06-14
type: summary
tags: [quartz, cloudflare, deployment, obsidian]
---

# Obsidian 笔记云端部署方案

## 部署架构

```
Obsidian (本地) → Quartz (构建) → GitHub (仓库) → Cloudflare Pages (部署)
```

| 组件 | 路径/地址 | 说明 |
|------|-----------|------|
| Obsidian Vault | `H:\hermesp-agent\03-obsidian-hermes` | 本地笔记库 |
| Quartz | `H:\hermesp-agent\quartz` | 静态网站生成器 |
| GitHub | `zhangyi233HIAS/PPT-show` | 代码仓库，分支 `v5` |
| Cloudflare Workers | `mypptshow2.buithanhlan498.workers.dev` | 最终部署域名 |

## 当前配置 (2026-06-14)

### quartz.config.yaml 关键配置

```yaml
baseUrl: mypptshow2.pages.dev
```

### ignorePatterns (排除不发布的目录)

```yaml
ignorePatterns:
  - private
  - templates
  - .obsidian
  - wiki/raw              # 原始论文/数据
  - wiki/dashboards
  - wiki/logs
  - wiki/methods
  - wiki/portocals
  - wiki/queries
  - wiki/indexes
  - memory
  - 01-outline
  - 02-my-daily-notes     # 私人日记
  - 03-my-information     # 私人信息
  - 05-my-lab
  - 06-my-plan
  - 09-improve-AI-other
  - 11-need-class-ing
  - log.md
  - SCHEMA.md
  - INSTALLATION.md
  - GIT-BACKUP-GUIDE.md
```

### 发布目录

| 目录 | 内容 | 状态 |
|------|------|------|
| `wiki/concepts/` | 概念笔记 (874篇) | ✅ 发布 |
| `wiki/raw/` | 原始教材 | ❌ 排除 |
| `04-projects/` | 项目笔记 | ✅ 发布 |
| `07-PPT-show/` | 演示笔记 | ✅ 发布 |

## 部署流程

### 方法一：Windows 批处理脚本

```batch
@echo off
chcp 65001 >nul
echo 正在同步笔记到 Quartz...

:: 清理旧缓存
if exist "H:\hermesp-agent\quartz\public" rd /s /q "H:\hermesp-agent\quartz\public"
if exist "H:\hermesp-agent\quartz\.quartz-cache" rd /s /q "H:\hermesp-agent\quartz\.quartz-cache"
if exist "H:\hermesp-agent\quartz\content" rd /s /q "H:\hermesp-agent\quartz\content"
mkdir "H:\hermesp-agent\quartz\content"

:: 复制笔记 (排除大文件和私密目录)
robocopy "H:\hermesp-agent\03-obsidian-hermes" "H:\hermesp-agent\quartz\content" *.md *.png *.jpg *.jpeg *.gif /S /XD ".git" ".obsidian" ".trash" "raw" "memory" "__pycache__"

:: Git 推送
cd /d "H:\hermesp-agent\quartz"
git add .
git commit -m "Quartz sync: update content"
git push origin v5

echo 推送完成！Cloudflare Pages 将自动部署。
pause
```

### 方法二：手动操作

1. 打开 PowerShell
2. 运行 `更新网站.bat` 或手动执行 robocopy + git push
3. 等待 Cloudflare Pages 自动部署 (~1-2分钟)

## 已知问题与解决

### 1. WSL 无法推送到 GitHub

**问题**: WSL 环境中 443 端口被阻断，无法 `git push`

**解决**: 在 Windows PowerShell 中执行 `git push origin v5`

### 2. baseUrl 错误

**问题**: 配置为 Workers 域名而非 Pages 域名

**解决**: 修改为 `mypptshow2.pages.dev`

### 3. wiki/concepts 被排除

**问题**: 概念笔记未发布到网站

**解决**: 从 ignorePatterns 中移除 `wiki/concepts`

## 诊断工具

运行 `H:\hermesp-agent\quartz\诊断工具.bat` 检查:
- Git 状态
- content 目录文件数
- GitHub 连接
- ignorePatterns 配置

## 安全控制

使用 YAML frontmatter 的 `draft` 字段控制单篇发布:

```yaml
---
title: 未发表的实验思路
draft: true    # 不发布到网站
---
```

---

*更新: 2026-06-14 - 迁移到 Cloudflare Pages，修复 baseUrl 和 ignorePatterns*
