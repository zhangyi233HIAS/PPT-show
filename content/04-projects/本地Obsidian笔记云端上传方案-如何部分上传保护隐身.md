### 方案一：使用 Quartz 的黑名单功能（最推荐，一劳永逸）

你可以把所有的文件都留在 `03-obsidian-hermes` 里，让 AI 继续畅快地读取。然后，我们只需要在 Quartz 层面定个规矩：“这几个文件夹，你生成网站的时候不要碰”。

**操作步骤：**

1. 用代码编辑器（比如 VS Code 或记事本）打开你的 `H:\hermesp-agent\quartz` 文件夹里的 **`quartz.config.ts`** 文件。
    
2. 找到 `configuration` 里面的 **`ignorePatterns`** 这一项（默认可能只有 `["private", "templates", ".obsidian"]`）。
    
3. 把你不想公开的 AI 配置和原始资料目录加进去，修改成类似这样：
    

TypeScript

```
ignorePatterns: [
  "private", 
  "templates", 
  ".obsidian",
  "memory",           // 屏蔽 AI 的记忆文件
  "wiki/raw",         // 屏蔽原始 PDF 论文和网页抓取数据
  "log.md",           // 屏蔽 AI 操作日志
  "SCHEMA.md",        // 屏蔽建库规范
  "INSTALLATION.md",  // 屏蔽环境安装指南
  "GIT-BACKUP-GUIDE.md" // 屏蔽系统配置说明
],
```

**效果：** 修改保存后，下次你运行 `npx quartz sync` 时，Quartz 会自动忽略这些文件。你的本地知识库依然是一个完整的整体，但展示给别人看的网站却干净清爽，只有你提炼好的学术笔记。

### 方案二：为特定的核心笔记设置“禁止发布”属性

如果 `wiki/concepts/` 目录下有一些 AI 生成的笔记你想发布，但另一些（比如正在构思的未发表实验思路）你不想发布，你可以利用 YAML frontmatter 进行精准控制。

**操作步骤：** 在你不想公开的某篇 Markdown 笔记的顶部属性区，加一行 `draft: true`：

YAML

```
---
title: 某项未发表的沙门氏菌适应性进化推演
created: 2026-05-19
draft: true
---
```

**效果：** Quartz 默认配置下，只要检测到 `draft: true`（草稿状态），哪怕这个文件在要同步的文件夹里，它也会在构建网页时跳过这篇文章。这给了你极大的灵活性。

### 方案三：划定“专属展区”（最适合做 PPT 汇报）

如果你觉得混在一起实在太乱，你可以在 Obsidian 内部建立一个极其清晰的边界。

**操作步骤：**

1. 在你的 `03-obsidian-hermes` 里新建一个文件夹，命名为 `00-Public-Show`（或者 `Web-Publish`）。
    
2. 将你确认要给导师或同门展示的、脱敏且整理好的笔记，**全部移动或复制到这个文件夹下**。
    
3. 重新配置 Quartz 的数据源：不用修改复杂的代码，只需要打开 `quartz` 目录，执行一次本地全量更新命令：
    
    Bash
    
    ```
    npx quartz update
    ```
    
    _（或者重新执行 `npx quartz create`）_
    
4. 当它问你 `Enter the full path to existing content folder` 时，这次不要填整个仓库，而是精确指向那个公开文件夹： **`H:\hermesp-agent\03-obsidian-hermes\00-Public-Show`**