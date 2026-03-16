# ⚡ autocode

**Auto-detect what you're building, fixing, or reviewing — then compress every instruction to save 40-65% tokens. No commands to learn. Just describe your task in plain language.**

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![Plugin](https://img.shields.io/badge/Claude%20Code-Plugin-blue)](#installation)
[![Tokens Saved](https://img.shields.io/badge/Tokens%20Saved-40--65%25-orange)](#how-it-works)

---

## What It Does

You describe your task in plain language. autocode does the rest:

```
You say:  "build a user login with Google OAuth"
Claude:   asks 2 questions → writes spec → creates tasks → writes tests → writes code → commits
Tokens:   40-65% fewer than without autocode
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
|---------|---------------|
| "build X" / "create X" / "make X" | Clarify → Spec → Plan → Code → Test → Review → Commit |
| "fix this bug" / "it's broken" | Read error → Trace root cause → Write test → Fix → Verify → Commit |
| "refactor this" / "clean up" | Analyze → Plan → Refactor → Test → Commit |
| "add X feature" / "implement X" | Clarify → Plan → Code → Test → Review → Commit |
| "review this" / "check this PR" | Read → Evaluate → Report findings |

You don't select a workflow. autocode detects your intent automatically.

## How It Works

autocode has three internal skills:

**less-token** — Compresses all internal planning into structured syntax. Same result, fewer tokens.

**no-prompt** — Expands your plain language into precise task lists with exact file paths, test strategy, and implementation plan. You never write a prompt.

**ilang-compress** — Core compression engine. Translates verbose instructions into structured I-Lang syntax.

## Principles

- **Test-driven**: Write tests before code. Always.
- **Minimal changes**: Do the least work that solves the problem.
- **No questions unless critical**: If it can be inferred, infer it.
- **Compressed internally, natural externally**: You see normal English. Claude thinks in compressed syntax.

## Comparison

| | Without autocode | With autocode |
|---|---|---|
| You describe a task | Claude asks many questions | Claude asks 1-2 max, then acts |
| Planning | Verbose internal monologue | Compressed structured syntax |
| Token usage | 100% | 35-60% |
| Workflow | You guide each step | Auto-detected and executed |
| Test coverage | Sometimes forgotten | Always test-first |

## Links

- [ilang.ai](https://ilang.ai) — Protocol & tools
- [research.ilang.ai](https://research.ilang.ai) — Papers & specification
- [ClawHub Skills](https://github.com/ilang-ai/ilang-openclaw) — OpenClaw skills

## License

MIT — Free to use, modify, share, and build on.

**I-Lang Research · Eastsoft Inc. · Canada · © 2026**
