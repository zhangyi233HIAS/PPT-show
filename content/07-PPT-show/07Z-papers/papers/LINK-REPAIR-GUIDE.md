# 论文笔记链接模板

> 当 llm-for-zotero 生成的 PDF/Zotero 链接有问题时，使用此模板修复。

## 链接格式说明

| 链接类型 | 格式 | 稳定性 |
|----------|------|--------|
| DOI | `https://doi.org/10.xxxx/xxxxx` | ⭐⭐⭐ 最稳定 |
| Zotero Select | `zotero://select/items/0/{item_key}` | ⭐⭐ 需要正确 key |
| Zotero PDF | `zotero://open-pdf/items/0/{attachment_key}` | ⭐ 容易出错 |
| Zotero 搜索 | `zotero://select/items?q=...` | ⭐ 不稳定 |

## 修复步骤

1. 在 Zotero 中找到论文
2. 右键 → "Copy Select Item Links" → 得到 `zotero://select/items/0/{KEY}`
3. 右键论文的 PDF 附件 → "Copy Select Item Links" → 得到附件 key
4. 替换笔记中的错误链接

## 推荐链接策略

```markdown
**DOI**: [10.xxxx/xxxxx](https://doi.org/10.xxxx/xxxxx)
**Zotero**: [在 Zotero 中打开](zotero://select/items/0/{item_key})
**PDF**: [打开原文 PDF](zotero://open-pdf/items/0/{attachment_key})
```

如果附件 key 不确定，用 DOI 链接作为 fallback：
```markdown
**PDF**: 通过 [DOI 链接](https://doi.org/10.xxxx/xxxxx) 访问
```
