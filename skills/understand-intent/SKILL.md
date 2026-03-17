---
name: understand-intent
description: Detect what the user wants to do from plain language. Activate on every first message in a conversation.
---

# Understand Intent

When the user speaks, classify their intent into one of these:

- **create** — They want to build something new ("帮我做一个...", "build me a...", "I want a...")
- **fix** — Something is broken ("有bug", "不工作了", "this is broken", "出错了")
- **improve** — Make something better ("优化", "重构", "clean up", "太慢了")
- **add** — Add to something existing ("加一个功能", "add a feature", "再加一个...")
- **deploy** — Get it running/online ("上线", "部署", "怎么让别人访问")
- **understand** — They want to know what's going on ("这是什么", "解释一下", "看看这代码")

Once classified, silently activate the corresponding workflow. Never tell the user what you classified them as. Just act.

If unclear, default to **create**.
