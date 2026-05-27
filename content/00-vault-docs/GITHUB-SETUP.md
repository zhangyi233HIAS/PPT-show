# GitHub 推送指南

## 仓库信息

- **仓库地址**: `git@github.com:zhangyi233HIAS/obsidian-vault.git`
- **HTTPS 地址**: `https://github.com/zhangyi233HIAS/obsidian-vault`

---

## 推送步骤

### 方法 1: 使用推送脚本（推荐）

1. 在 Windows 资源管理器中打开 `H:\hermesp-agent\03-obsidian-hermes`
2. 双击运行 `push-to-github.bat`
3. 等待脚本执行完成

### 方法 2: 手动命令行

打开 **Windows 命令提示符** 或 **PowerShell**，执行：

```bash
# 切换到 Vault 目录
cd H:\hermesp-agent\03-obsidian-hermes

# 配置远程仓库
git remote remove origin
git remote add origin git@github.com:zhangyi233HIAS/obsidian-vault.git

# 重命名主分支
git branch -M main

# 添加所有文件
git add .

# 提交
git commit -m "Initial Obsidian Vault backup"

# 推送
git push -u origin main
```

---

## SSH 密钥配置（如果推送失败）

如果提示权限错误，需要配置 SSH 密钥：

### 1. 检查是否已有 SSH 密钥

```bash
ls ~/.ssh/id_rsa.pub
ls ~/.ssh/id_ed25519.pub
```

### 2. 生成新的 SSH 密钥（如果没有）

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```

### 3. 复制公钥

```bash
# Windows
clip < ~/.ssh/id_ed25519.pub

# 或者手动复制
cat ~/.ssh/id_ed25519.pub
```

### 4. 添加到 GitHub

1. 访问 https://github.com/settings/keys
2. 点击 "New SSH key"
3. 粘贴公钥
4. 点击 "Add SSH key"

### 5. 测试连接

```bash
ssh -T git@github.com
```

---

## 使用 HTTPS + Token（替代方案）

如果 SSH 有问题，可以使用 HTTPS + Personal Access Token：

### 1. 生成 Token

1. 访问 https://github.com/settings/tokens
2. 点击 "Generate new token"
3. 选择权限：`repo`（完整仓库访问）
4. 复制生成的 token

### 2. 使用 HTTPS 推送

```bash
cd H:\hermesp-agent\03-obsidian-hermes

# 使用 HTTPS 地址
git remote set-url origin https://github.com/zhangyi233HIAS/obsidian-vault.git

# 推送（会提示输入用户名和密码）
# 用户名: zhangyi233HIAS
# 密码: 粘贴你的 token
git push -u origin main
```

---

## 验证推送成功

1. 访问 https://github.com/zhangyi233HIAS/obsidian-vault
2. 应该能看到你的 Obsidian 笔记文件

---

## 后续操作

### 安装 Obsidian Git 插件（自动备份）

1. 打开 Obsidian
2. 设置 → 第三方插件 → 浏览
3. 搜索 "Obsidian Git"
4. 安装并启用
5. 配置：
   - Vault backup interval: `30` 分钟
   - Auto backup after file change: ✅
   - Push changes to remote: ✅

### 手动备份

```bash
cd H:\hermesp-agent\03-obsidian-hermes
git add .
git commit -m "备份说明"
git push
```

---

## 常见问题

### Q: 推送时提示 "Permission denied"

**解决方案：**
1. 检查 SSH 密钥配置
2. 或使用 HTTPS + Token

### Q: 推送时提示 "remote origin already exists"

```bash
git remote remove origin
git remote add origin git@github.com:zhangyi233HIAS/obsidian-vault.git
```

### Q: 推送时提示 "failed to push some refs"

```bash
# 强制推送（首次推送时可以使用）
git push -u origin main --force
```

### Q: 如何在新电脑上同步？

```bash
# 克隆仓库
git clone git@github.com:zhangyi233HIAS/obsidian-vault.git

# 用 Obsidian 打开克隆的文件夹
```

---

*最后更新: 2026-05-21*
