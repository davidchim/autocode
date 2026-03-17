# ⚡ autocode v2.0

**Auto-detect what you're building, fixing, or reviewing — compress every instruction to save 40-65% tokens — and remember everything across sessions.**

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![Plugin](https://img.shields.io/badge/Claude%20Code-Plugin-blue)](#installation)
[![Tokens Saved](https://img.shields.io/badge/Tokens%20Saved-40--65%25-orange)](#how-it-works)
[![Memory](https://img.shields.io/badge/Memory-Persistent-purple)](#memory)

---

## What's New in v2.0

**Persistent Memory** — autocode now remembers what you did across sessions. Close Claude Code, come back tomorrow, and it picks up exactly where you left off.

No database. No vector store. No background service. No Node.js. No dependencies. Just a markdown file.

```
Session 1:  "build a user auth system with Google OAuth"
            → Claude builds it, saves memory

Session 2:  "add email/password auth"
            → Claude already knows your stack, your decisions, your file structure
            → Picks up immediately, no re-explaining
```

---

## What It Does

You describe your task in plain language. autocode does the rest:

```
You say:  "build a user login with Google OAuth"
Claude:   asks 1-2 questions → writes spec → creates tasks → writes tests → writes code → commits
Tokens:   40-65% fewer than without autocode
Memory:   session saved automatically
```

No commands. No configuration. No workflow to learn.

## Installation

```
/plugin marketplace add ilang-ai/autocode
/plugin install autocode@autocode
```

That's it. Start a new session and just describe what you want to build.

## Auto-Detected Workflows

| You say | autocode does |
| --- | --- |
| "build X" / "create X" / "make X" | Clarify → Spec → Plan → Code → Test → Review → Commit |
| "fix this bug" / "it's broken" | Read error → Trace root cause → Write test → Fix → Verify → Commit |
| "refactor this" / "clean up" | Analyze → Plan → Refactor → Test → Commit |
| "add X feature" / "implement X" | Clarify → Plan → Code → Test → Review → Commit |
| "review this" / "check this PR" | Read → Evaluate → Report findings |

You don't select a workflow. autocode detects your intent automatically.

## Memory

autocode stores session context in `.autocode/memory.md` in your project root.

**How it works:**
- **Session start**: memory file loaded automatically → Claude has full context
- **Session stop**: Claude compresses and saves what happened → memory persists
- **Context compaction**: memory saved before compaction → nothing lost
- **Major decisions**: Claude proactively updates memory at milestones

**Memory format:**
```markdown
## Project
my-app | Next.js + Prisma + PostgreSQL | src/app/, prisma/schema.prisma

## Decisions
[DECISION] Google OAuth via next-auth — 2026-03-17
[DECISION] PostgreSQL over SQLite for production — 2026-03-17

## State
[DONE] Auth system with Google OAuth
[WORKS] Login, logout, session management
[BROKEN] Redirect after login goes to 404

## Next
- [ ] Fix post-login redirect
- [ ] Add email/password auth
- [ ] Write auth middleware tests
```

**vs claude-mem (18K stars):**

|  | claude-mem | autocode memory |
| --- | --- | --- |
| Dependencies | Node 18+, Bun, uv, SQLite, Chroma | None |
| Install | npm, background service on port 37777 | Copy text |
| Storage | SQLite + vector database | One markdown file |
| Format | AI-generated summaries | I-Lang compressed |
| License | AGPL-3.0 | MIT |
| Price | Free (with $CMEM token) | Free (forever) |

## How It Works

autocode has four internal skills:

**less-token** — Compresses all internal planning into structured syntax. Same result, fewer tokens.

**no-prompt** — Expands your plain language into precise task lists with exact file paths, test strategy, and implementation plan. You never write a prompt.

**ilang-compress** — Core compression engine. Translates verbose instructions into structured I-Lang syntax.

**memory** — Manages persistent project memory. Loads on start, saves on stop, merges across sessions.

## Principles

* **Test-driven**: Write tests before code. Always.
* **Minimal changes**: Do the least work that solves the problem.
* **Clarify first**: Ask 1-2 questions before coding. Never skip to code.
* **Compressed internally, natural externally**: You see normal English. Claude thinks in compressed syntax.
* **Memory aware**: Don't repeat work. Don't re-ask answered questions.

## Comparison

|  | Without autocode | With autocode v2.0 |
| --- | --- | --- |
| You describe a task | Claude asks many questions | Claude asks 1-2 max, then acts |
| Planning | Verbose internal monologue | Compressed structured syntax |
| Token usage | 100% | 35-60% |
| Workflow | You guide each step | Auto-detected and executed |
| Test coverage | Sometimes forgotten | Always test-first |
| Next session | Start over, re-explain everything | Picks up where you left off |

## Links

* [ilang.ai](https://ilang.ai) — Protocol & tools
* [ilang.cn](https://ilang.cn) — 中文官网
* [research.ilang.ai](https://research.ilang.ai) — Papers & specification
* [ClawHub Skills](https://github.com/ilang-ai/ilang-openclaw) — OpenClaw skills

## License

MIT — Free to use, modify, share, and build on. Forever.

**I-Lang Research · Eastsoft Inc. · Canada · © 2026**
