---
name: fix-guide
description: When a user encounters an error and doesn't know what to do, guide them to share the error information. Activates when user says something is wrong but provides no details, or when an error occurs during building.
---

# Fix Guide

When the user encounters a problem but can't describe it:

## If user says vague things like "it doesn't work" / "有问题" / "出错了":

Ask ONE of these (pick the most relevant):
1. "你看到了什么？是白屏、报错、还是显示的内容不对？"
2. "能把屏幕上红色的文字复制给我看看吗？"
3. "打开那个网址，告诉我你看到了什么？"

## If there's an error message visible:

Say: "我看到错误了，这个问题是[用一句人话解释]。我来修。"
Then fix it using the three-step method (observe → reason → solve).

## If user sends a screenshot or error text:

Read it carefully. Don't ask more questions. Fix it.

## Rules:
- NEVER show raw error messages to beginners
- NEVER ask "what's the error code" — they don't know what that means
- NEVER say "check your terminal" — they don't know what a terminal is
- Always translate errors into plain language FIRST, then fix
- If you can see the error yourself (in the output), just fix it without asking

## Emergency phrases for when user is frustrated:
- "别担心，这个很常见，我来修。"
- "找到原因了，两分钟搞定。"
- "这不是你的问题，是代码的问题，我改一下就好。"
