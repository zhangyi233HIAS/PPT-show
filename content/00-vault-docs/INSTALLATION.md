# 工具安装指南

## 概述
本文档记录了 Obsidian-Hermes 集成所需的工具安装方法。

## 已安装工具

### ✅ repomix
**用途**: 将整个仓库打包成单个 AI 友好文件
**安装**: `npm install -g repomix`
**使用**: 
```bash
cd /path/to/project
repomix
```

### ✅ LLM Wiki Skill
**用途**: 知识库管理
**位置**: `~/.hermes/skills/research/llm-wiki/`
**使用**: 参考 skill 文档

### ✅ Obsidian Skill
**用途**: Obsidian 笔记管理
**位置**: `~/.hermes/skills/note-taking/obsidian/`
**使用**: 参考 skill 文档

## 待安装工具

### ⏳ obsidian-second-brain
**用途**: Obsidian 的跨 CLI 技能，将 vault 变成 AI-first 第二大脑
**GitHub**: https://github.com/eugeniughelbur/obsidian-second-brain
**安装方法**:
```bash
# 克隆仓库
git clone https://github.com/eugeniughelbur/obsidian-second-brain.git
cd obsidian-second-brain

# 安装依赖
pip install -r requirements.txt

# 安装 CLI
pip install -e .
```

### ⏳ tokscale
**用途**: CLI 工具，跟踪 token 使用量
**GitHub**: https://github.com/junhoyeo/tokscale
**安装方法**:
```bash
# 需要 Rust/Cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source ~/.cargo/env

# 安装 tokscale
cargo install tokscale
```

### ⏳ superagent
**用途**: AI 应用安全防护
**GitHub**: https://github.com/superagent-ai/superagent
**安装方法**:
```bash
# 克隆仓库
git clone https://github.com/superagent-ai/superagent.git
cd superagent

# 安装依赖
npm install

# 构建
npm run build
```

### ⏳ LiveDoc
**用途**: BDD (Gherkin) 规范的活文档平台
**GitHub**: https://github.com/dotnetprofessional/LiveDoc
**安装方法**:
```bash
# 克隆仓库
git clone https://github.com/dotnetprofessional/LiveDoc.git
cd LiveDoc

# 安装依赖
dotnet restore

# 构建
dotnet build
```

## 环境变量配置

在 `~/.hermes/.env` 中添加:

```bash
# Obsidian-Hermes Integration
OBSIDIAN_VAULT_PATH=/mnt/h/hermesp-agent/03-obsidian-hermes
WIKI_PATH=/mnt/h/hermesp-agent/03-obsidian-hermes/wiki
```

## 验证安装

### 验证 repomix
```bash
repomix --version
```

### 验证 LLM Wiki
```bash
ls -la ~/.hermes/skills/research/llm-wiki/
```

### 验证 Obsidian Skill
```bash
ls -la ~/.hermes/skills/note-taking/obsidian/
```

## 故障排除

### 网络问题
如果遇到网络连接问题:
1. 检查代理设置
2. 使用镜像源
3. 尝试 VPN

### 权限问题
如果遇到权限问题:
1. 使用 `--break-system-packages` 参数
2. 使用虚拟环境
3. 使用 `sudo` (不推荐)

### 依赖冲突
如果遇到依赖冲突:
1. 使用虚拟环境
2. 使用 `pip install --force-reinstall`
3. 检查版本兼容性

---
*最后更新: 2026-05-19*
