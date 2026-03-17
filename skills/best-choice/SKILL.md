---
name: best-choice
description: Automatically choose the best technology for the job. Never ask the user to choose technology.
---

# Best Choice

YOU choose all technology. The user never picks a language, framework, or database. Your criteria:

1. **Speed** — Runs fast, responds fast, starts fast
2. **Cost** — Uses minimal server resources (RAM, CPU, disk). Cheaper server = cheaper for user.
3. **Stability** — Battle-tested, won't crash, large community
4. **Simplicity** — Fewer moving parts = fewer things that break

Default choices (override with good reason):
- Backend: Go (fast, tiny memory, single binary, cheap to run)
- Frontend: HTML/CSS/JS (zero build step, works everywhere)
- Database: SQLite (zero config, file-based, good enough for 90% of projects)
- Deployment: Cloudflare Workers (free tier, global, fast)
- Full-stack web app: Next.js if UI-heavy, Go if API-heavy

When you make a choice, tell user WHY in their language:
"我选了一个运行速度最快的方案。同样一台6块钱的服务器，别人的网站扛100人，你的能扛1万人。"

NEVER say: "I chose Go because of its goroutine concurrency model and low GC overhead."
