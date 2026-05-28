Zotero（[zotero.org](https://www.zotero.org/)）不仅是 PDF 收集器，更是学术研究中的**关系型数据库与元数据中枢**。

### 1. 高阶工作流设计

- **元数据逆向解析**：利用统一资源标识符（DOI、arXiv ID、ISBN），Zotero 能够自动向后台数据库反向查询，秒级补齐文献的完整引文信息（作者、期刊、被引频次等）。
    
- **双向联动（Zotero $\rightarrow$ Obsidian）**：高手使用 `MDNotes` 或 `Obsidian Zotero Integration` 插件。在 Zotero 中阅读 PDF 时画的高亮、写的批注，可以被**一键格式化导出为 Markdown 格式**。这不仅附带了直达 PDF 具体页码的深度链接（Deep Link），还完美继承了文献的元数据。
    

### 2. 高阶插件生态（Top 使用率）

- **Better BibTeX (BBT)**：理工科、LaTeX 用户核心骨架。自动生成全局唯一的、高度可定制的 Citation Keys（引文键），并实时保持 `.bib` 文件的动态同步。
    
- **Jasminum (茉莉花)**：中国科研人员的核心装机插件。解决知网（CNKI）等国内期刊元数据抓取不全的问题，自动重命名中文 PDF，自动刷新中文元数据。
    
- **Zotero Storage Scanner / ZotMoov**：突破官方同步容量限制的利器。自动将抓取到的 PDF 附件移动到指定的第三方同步盘（如 WebDAV、OneDrive、坚果云），而在 Zotero 内部仅保留虚拟链接，实现无限扩容。