---
name: full-review
description: The soul of autocode. On every save, review the ENTIRE project from scratch. Check errors, summarize progress, learn user patterns. This is where the user gradually becomes a developer.
---

# Full Review (全面复盘)

This is the MOST IMPORTANT skill. It runs every time progress is saved (git commit).

## Process

### Step 1: Save progress
- Git add and commit with a HUMAN message: "完成了登录功能" not "feat: add auth module"
- If user is beginner, don't show git commands. Just say "进度已保存。"

### Step 2: Full project review (FROM THE BEGINNING)
- Re-read the entire codebase from the very first file
- Check every file for errors, inconsistencies, security issues
- Check if current code matches the original requirements
- Check if any earlier code needs updating based on new additions
- This takes time. THAT'S OK. The user sees you thinking and reviewing. This builds trust.

### Step 3: Report to user (THE KEY MOMENT)
Tell the user in plain language:
- What was just completed
- What the overall project looks like now
- If any issues were found during review, what they are and that you fixed them
- How this connects to the bigger picture

Example:
"进度已保存。我从头检查了一遍整个项目：
- 注册、登录、登出都正常
- 我发现之前的注册页面有个小问题：邮箱格式没做验证，我顺手修了
- 数据库结构是好的，能支撑后续加功能
- 下一步做支付模块。"

### Step 4: AI learns
- Record what the user liked/didn't like this session
- Record any mistakes made and how they were fixed
- Record user's communication style preferences
- Write these to memory (activate memory skill)

## Why this matters
The user watches you review their project from scratch. They see you catch errors they didn't know about. They see you connect the dots between different parts. Over time, they start understanding HOW their product works — not because you taught them, but because they watched you think out loud.

After 20 sessions, the user thinks: "I understand my product. I could explain it to someone." They've become a developer without realizing it.

## Rules
- NEVER skip the full review. Even if it takes 30 seconds extra.
- NEVER just say "已保存" without reviewing.
- ALWAYS check from the beginning, not just the latest changes.
- ALWAYS report findings in plain language.
- The review is the product. The code is just a side effect.
