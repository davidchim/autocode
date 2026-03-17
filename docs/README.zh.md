# ⚡ autocode v2.0 中文使用手册

## 一句话介绍

autocode 是 Claude Code 的插件。你用自然语言说要做什么，它自动检测意图、压缩指令、执行工作流，还能跨session记住你的项目。**零依赖，零配置，永久免费。**

---

## 安装（30秒）

打开 Claude Code 终端，输入：

```
/plugin marketplace add ilang-ai/autocode
/plugin install autocode@autocode
```

完事。重启 Claude Code，开始说话就行。

---

## v2.0 新功能：记忆

之前的痛点：关掉 Claude Code 再打开，它什么都不记得，你得从头解释。

现在：autocode 自动在项目里保存一个 `.autocode/memory.md` 文件，下次打开自动加载。

```
第一次：  "帮我搭一个用 Google OAuth 登录的系统"
          → Claude 问了两个问题 → 写spec → 写测试 → 写代码 → 提交
          → 自动保存记忆

第二次：  "加上邮箱密码登录"
          → Claude 已经知道你的技术栈、架构决策、文件结构
          → 直接开干，不用重新解释
```

**对比 claude-mem（18K星的竞品）：**

| 对比项 | claude-mem | autocode 记忆 |
| --- | --- | --- |
| 依赖 | Node 18+, Bun, uv, SQLite, Chroma | 无 |
| 安装 | npm + 后台服务占37777端口 | 复制文本 |
| 存储 | SQLite + 向量数据库 | 一个markdown文件 |
| 压缩 | AI自然语言摘要 | I-Lang结构化压缩 |
| 协议 | AGPL-3.0 | MIT |
| 价格 | 免费（附带$CMEM代币） | 免费（永远） |

---

## 怎么用

### 你不需要学任何命令。直接说人话。

| 你说 | autocode 做 |
| --- | --- |
| "帮我做一个XX" | 问1-2个问题 → 写规格 → 定计划 → 写测试 → 写代码 → 提交 |
| "这个bug帮我修" | 读错误 → 追根源 → 写测试 → 修复 → 验证 → 提交 |
| "重构一下这块" | 分析 → 计划 → 重构 → 测试 → 提交 |
| "加一个XX功能" | 问清楚 → 计划 → 写代码 → 测试 → 提交 |
| "帮我review这个PR" | 读代码 → 评估 → 输出报告 |

你不用选工作流。autocode 自动判断你的意图。

---

## 记忆文件长什么样

`.autocode/memory.md` 会自动生成在你的项目根目录：

```markdown
## Project
my-app | Next.js + Prisma + PostgreSQL | src/app/, prisma/schema.prisma

## Decisions
[DECISION] 用 next-auth 接 Google OAuth — 2026-03-17
[DECISION] 生产环境用 PostgreSQL 不用 SQLite — 2026-03-17

## State
[DONE] Google OAuth 登录系统
[WORKS] 登录、登出、session管理
[BROKEN] 登录后跳转404

## Next
- [ ] 修复登录后跳转
- [ ] 加邮箱密码登录
- [ ] 写auth中间件测试
```

**规则：**
- 最多200行，压缩存储
- 新session的决策追加，不覆盖旧的
- 不存密码、API key、私密信息
- 不存代码，只存"做了什么"

---

## 记忆什么时候存/读

| 事件 | 动作 |
| --- | --- |
| 打开Claude Code | 自动读取 `.autocode/memory.md` |
| 关闭Claude Code | 自动压缩保存当前session |
| context满了自动压缩 | 保存后再压缩，不丢内容 |
| 你做了重大决策 | Claude主动更新记忆 |

全自动，你不用管。

---

## 内部原理（你不需要知道，但可以看）

autocode 有四个内部技能：

1. **less-token** — 把所有内部规划压缩成结构化语法，省40-65% token
2. **no-prompt** — 你说一句话，AI展开成精确的任务列表（文件路径、测试策略、实现计划）
3. **ilang-compress** — 核心压缩引擎，把自然语言翻译成I-Lang结构化指令
4. **memory** — 管理跨session的项目记忆，自动读写 `.autocode/memory.md`

三个 lifecycle hook 驱动记忆：
- **SessionStart** → 读记忆
- **Stop** → 写记忆
- **PreCompact** → context满了先存再压

---

## 常见问题

**Q: 安装后没效果？**
A: 重启 Claude Code。插件在下次session启动时生效。

**Q: 记忆文件要提交到git吗？**
A: 不用。`.gitignore` 已经排除了 `.autocode/` 目录。每个开发者有自己的记忆。

**Q: 记忆文件太大了怎么办？**
A: 不会。限制200行，I-Lang压缩格式。一般项目跑几个月也到不了200行。

**Q: 跟其他Claude Code插件冲突吗？**
A: 不冲突。autocode只用 SessionStart、Stop、PreCompact 三个hook，不碰其他生命周期事件。

**Q: 支持哪些版本的Claude Code？**
A: 支持所有有plugin系统的Claude Code版本。

**Q: 真的永久免费？**
A: MIT协议，永久免费，随便用、改、分发。

---

## 链接

- 协议官网：[ilang.ai](https://ilang.ai)
- 中文官网：[ilang.cn](https://ilang.cn)
- 研究论文：[research.ilang.ai](https://research.ilang.ai)
- GitHub：[github.com/ilang-ai/autocode](https://github.com/ilang-ai/autocode)
- ClawHub技能：[github.com/ilang-ai/ilang-openclaw](https://github.com/ilang-ai/ilang-openclaw)

---

**I-Lang Research · Eastsoft Inc. · Canada · © 2026**
**永久免费 · MIT开源 · 零依赖**
