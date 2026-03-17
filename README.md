# ⚡ autocode

### Persistent memory + token compression for Claude Code. Zero dependencies.

[🇨🇳 中文使用手册](docs/README.zh.md) · [Protocol](https://ilang.ai) · [Research](https://research.ilang.ai)

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![Version](https://img.shields.io/badge/version-2.0.0-blue.svg)](https://github.com/ilang-ai/autocode/releases)
[![Claude Code](https://img.shields.io/badge/Claude%20Code-Plugin-blueviolet)](#installation)
[![Tokens Saved](https://img.shields.io/badge/Tokens%20Saved-40--65%25-orange)](#how-it-works)
[![Memory](https://img.shields.io/badge/Memory-Persistent-purple)](#memory)
[![Dependencies](https://img.shields.io/badge/Dependencies-0-brightgreen)](#comparison)

---

> **Close Claude Code. Come back tomorrow. Pick up where you left off.**
>
> No database. No vector store. No background service. No Node.js.
> Just one markdown file.

---

## Quick Start

```bash
/plugin marketplace add ilang-ai/autocode
/plugin install autocode@autocode
```

Restart Claude Code. Describe what you want to build. That's it.

---

## The Problem

Every time you start a Claude Code session:

```
You:     "We were working on the auth system..."
Claude:  "Nice to meet you! What would you like to build?"
```

You lose 5-10 minutes re-explaining. Every. Single. Time.

And when Claude plans internally, it burns tokens on verbose monologues you never see.

## The Solution

```
Session 1:
  You:    "build a user login with Google OAuth"
  Claude: asks 2 questions → spec → test → code → commit
  Memory: saved automatically ✓

Session 2:
  You:    "add email/password auth"
  Claude: already knows your stack, decisions, file structure
          → picks up immediately, zero re-explaining
  Tokens: 40-65% fewer than without autocode
```

---

## Features

### 🧠 Persistent Memory
Context survives across sessions. Stored in `.autocode/memory.md` — a single, human-readable markdown file in your project root.

- **Session start** → memory loaded automatically
- **Session stop** → compressed and saved
- **Context compaction** → saved before compacting, nothing lost
- **Major decisions** → proactively updated at milestones

### ⚡ Token Compression
All internal planning uses [I-Lang](https://ilang.ai) structured syntax. Claude thinks compressed, outputs natural language. 40-65% fewer tokens on internal operations.

### 🔍 Auto-Detect Workflows

| You say | autocode does |
| --- | --- |
| `"build X"` | Clarify → Spec → Plan → Test → Code → Commit |
| `"fix this bug"` | Read error → Root cause → Test → Fix → Verify → Commit |
| `"refactor this"` | Analyze → Plan → Refactor → Test → Commit |
| `"add X feature"` | Clarify → Plan → Code → Test → Commit |
| `"review this"` | Read → Evaluate → Report |

No commands to learn. Intent detected automatically.

### ✅ Test-First by Default
autocode enforces test-driven development. Tests are written before code. Always.

### ❓ Clarify Before Coding
Claude asks 1-2 critical questions before writing any code. No more "here's 500 lines based on my assumptions."

---

## Memory Format

`.autocode/memory.md` — automatically generated, human-readable:

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

Max 200 lines. I-Lang compressed. No secrets stored. No code stored. Decisions are dated and never overwritten.

---

## Architecture

```
┌─────────────────────────────────────────────────┐
│                CLAUDE CODE SESSION               │
│                                                  │
│  SessionStart ──→ Stop ──→ PreCompact            │
│       ↓              ↓           ↓               │
│  [load memory]  [save memory] [save memory]      │
└─────────────────────────────────────────────────┘
         ↓              ↓           ↓
┌─────────────────────────────────────────────────┐
│              .autocode/memory.md                  │
│                                                  │
│  One file. Human-readable. I-Lang compressed.    │
│  No database. No service. No dependencies.       │
└─────────────────────────────────────────────────┘
```

**4 Skills:**

| Skill | What it does |
| --- | --- |
| `less-token` | Compress internal planning → fewer tokens |
| `no-prompt` | Expand plain language → precise task lists |
| `ilang-compress` | Core I-Lang compression engine |
| `memory` | Persistent project memory across sessions |

**3 Lifecycle Hooks:**

| Hook | When | Action |
| --- | --- | --- |
| `SessionStart` | Session opens | Load `.autocode/memory.md` |
| `Stop` | Session stops | Compress & save memory |
| `PreCompact` | Context full | Save before compaction |

---

## Comparison

### vs no plugin

|  | Without autocode | With autocode |
| --- | --- | --- |
| New session | Re-explain everything | Picks up where you left off |
| Planning | Verbose monologue | Compressed syntax |
| Token usage | 100% | 35-60% |
| Workflow | You guide each step | Auto-detected |
| Tests | Sometimes forgotten | Always test-first |

### vs claude-mem (18K★)

|  | claude-mem | autocode |
| --- | --- | --- |
| Dependencies | Node 18+, Bun, uv, SQLite, Chroma | **None** |
| Install | npm + background service (port 37777) | 2 commands |
| Storage | SQLite + vector database | **1 markdown file** |
| Compression | AI natural language summaries | **I-Lang structured** |
| Background service | Yes (HTTP API + web viewer) | **No** |
| Token compression | No | **Yes (40-65%)** |
| Workflow detection | No | **Yes** |
| Test enforcement | No | **Yes** |
| License | AGPL-3.0 | **MIT** |
| Price | Free + $CMEM token | **Free forever** |
| Philosophy | Observe & store everything | **Compress & keep essentials** |

### vs everything-claude-code (8K★)

|  | everything-claude-code | autocode |
| --- | --- | --- |
| Focus | 340 plugins, 1900 skills | **4 skills, laser-focused** |
| Memory | No built-in memory | **Persistent memory** |
| Install complexity | Multiple plugins to configure | **2 commands, done** |
| Token optimization | No | **40-65% savings** |
| Dependencies | Various per plugin | **Zero** |
| License | Various | **MIT** |

---

## File Structure

```
autocode/
├── .claude-plugin/
│   └── plugin.json              # Plugin config + 3 lifecycle hooks
├── hooks/
│   └── session-start.md         # Workflow detection + memory awareness
├── scripts/
│   ├── load-memory.sh           # SessionStart: read memory
│   └── save-memory.sh           # Stop/PreCompact: ensure directory
├── skills/
│   ├── less-token/SKILL.md      # Token compression
│   ├── no-prompt/SKILL.md       # Plain language → task lists
│   ├── ilang-compress/SKILL.md  # I-Lang compression engine
│   └── memory/SKILL.md          # Memory management rules
├── docs/
│   └── README.zh.md             # 中文使用手册
├── .github/
│   └── workflows/
│       └── release.yml          # Auto-release on tag push
├── .gitignore                   # Excludes .autocode/ from git
├── LICENSE                      # MIT
└── README.md                    # You are here
```

---

## FAQ

**Does memory file go into git?**
No. `.gitignore` excludes `.autocode/`. Each developer has their own memory.

**Will memory get too large?**
No. Hard limit at 200 lines, I-Lang compressed. Months of sessions fit easily.

**Conflicts with other plugins?**
No. autocode only uses SessionStart, Stop, and PreCompact hooks.

**Is it really free?**
MIT license. Free forever. No tokens, no premium tier, no catch.

---

## Links

| | |
| --- | --- |
| 🌐 Protocol | [ilang.ai](https://ilang.ai) |
| 🇨🇳 中文官网 | [ilang.cn](https://ilang.cn) |
| 📄 Research | [research.ilang.ai](https://research.ilang.ai) |
| 📦 ClawHub Skills | [ilang-openclaw](https://github.com/ilang-ai/ilang-openclaw) |
| 🐦 X / Twitter | [@adsorgcn](https://x.com/adsorgcn) |

---

<p align="center">
  <strong>I-Lang Research · Eastsoft Inc. · Canada · © 2026</strong><br>
  <sub>MIT Licensed · Zero Dependencies · Free Forever</sub>
</p>
