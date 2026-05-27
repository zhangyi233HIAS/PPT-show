# Obsidian Git 备份配置指南

## 概述

本指南帮助你配置 Obsidian Vault 的 Git 备份，实现版本控制和云端同步。

---

## 已完成的配置

### ✅ .gitignore 文件

已配置忽略以下文件：
- `.obsidian/workspace.json` - 工作区布局
- `.obsidian/workspace-mobile.json` - 移动端工作区
- `.obsidian/backlink-cache` - 反向链接缓存
- `.obsidian/snappy.db` - 数据库缓存
- 系统文件（`.DS_Store`, `Thumbs.db`）

### ✅ Git 仓库初始化

已初始化 Git 仓库并创建首次提交。

---

## 下一步：推送到远程仓库

### 方案 1：GitHub（推荐）

**1. 创建 GitHub 仓库**

1. 访问 [github.com](https://github.com)
2. 点击 "New repository"
3. 填写信息：
   - Repository name: `obsidian-vault` 或你喜欢的名字
   - Description: `My Obsidian knowledge base`
   - **选择 Private**（保护隐私）
4. 点击 "Create repository"

**2. 关联远程仓库**

在 Windows 命令提示符或 PowerShell 中执行：

```bash
cd H:\hermesp-agent\03-obsidian-hermes

# 关联远程仓库（替换为你的仓库地址）
git remote add origin git@github.com:YourUsername/obsidian-vault.git

# 重命名主分支
git branch -M main

# 推送到远程
git push -u origin main
```

### 方案 2：GitLab

```bash
cd H:\hermesp-agent\03-obsidian-hermes
git remote add origin git@gitlab.com:YourUsername/obsidian-vault.git
git branch -M main
git push -u origin main
```

### 方案 3：Gitee（国内）

```bash
cd H:\hermesp-agent\03-obsidian-hermes
git remote add origin git@gitee.com:YourUsername/obsidian-vault.git
git branch -M main
git push -u origin main
```

---

## 配置 Obsidian Git 插件（自动备份）

### 步骤 1：安装插件

1. 打开 Obsidian
2. 进入 "设置" → "第三方插件"
3. 点击 "浏览"
4. 搜索 "Obsidian Git"
5. 点击 "安装" → "启用"

### 步骤 2：配置插件

进入 "设置" → "Obsidian Git"：

**基础设置：**
- Vault backup interval (minutes): `30`（每30分钟自动备份）
- Auto backup after file change: ✅ 启用
- Commit message: `vault backup: {{date}}`

**推送设置：**
- Push changes to remote: ✅ 启用
- Pull updates on startup: ✅ 启用（可选）

**高级设置（可选）：**
- Auto commit on file change delay: `10`（文件修改后10秒提交）
- Show status bar: ✅ 启用（显示同步状态）

### 步骤 3：测试

1. 在 Obsidian 中创建或修改一个笔记
2. 等待自动备份（或手动触发：`Ctrl+P` → "Obsidian Git: Backup"）
3. 检查 GitHub 仓库是否收到更新

---

## 手动备份方法

### 方法 1：使用备份脚本

双击运行 `backup.bat`，按提示操作。

### 方法 2：命令行

```bash
cd H:\hermesp-agent\03-obsidian-hermes
git add .
git commit -m "手动备份: %date%"
git push
```

### 方法 3：Obsidian 命令面板

1. `Ctrl+P` 打开命令面板
2. 输入 "Obsidian Git"
3. 选择 "Backup" 或 "Commit all changes"

---

## 常见问题

### Q: 推送时提示权限错误？

**解决方案：**
1. 检查 SSH 密钥是否配置
2. 或使用 HTTPS + Personal Access Token

```bash
# 使用 HTTPS
git remote set-url origin https://github.com/YourUsername/obsidian-vault.git
```

### Q: 如何在多台电脑同步？

**在新电脑上：**
```bash
# 克隆仓库
git clone git@github.com:YourUsername/obsidian-vault.git

# 用 Obsidian 打开克隆的文件夹
```

### Q: 如何恢复到某个版本？

```bash
# 查看提交历史
git log --oneline

# 恢复到特定版本
git checkout <commit-hash> .

# 或恢复特定文件
git checkout <commit-hash> -- path/to/file.md
```

### Q: .gitignore 不生效？

```bash
# 清除缓存
git rm -r --cached .
git add .
git commit -m "Fix: apply .gitignore"
```

---

## 最佳实践

1. **定期备份**: 使用 Obsidian Git 插件自动备份
2. **有意义的提交信息**: 描述你做了什么修改
3. **私有仓库**: 保护个人笔记隐私
4. **分支管理**: 大的修改使用分支
5. **定期拉取**: 多设备同步时先 pull 再 push

---

## 相关资源

- [Obsidian Git 插件文档](https://github.com/denolehov/obsidian-git)
- [Git 官方文档](https://git-scm.com/doc)
- [GitHub SSH 配置](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)

---

*最后更新: 2026-05-21*
