# ⚡ autocode

### Anyone can build software with Claude Code. No coding skills required.

[🇨🇳 中文使用手册](docs/README.zh.md) · [I-Lang Protocol](https://ilang.ai) · [Research](https://research.ilang.ai)

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![Version](https://img.shields.io/badge/version-2.1.0-blue.svg)](https://github.com/ilang-ai/autocode/releases)
[![Dependencies](https://img.shields.io/badge/Dependencies-0-brightgreen)](#install)

---

## 1. You talk. Claude builds.

Just describe what you want in plain language. autocode turns Claude Code into a developer that works for you — no programming knowledge needed.

```
You:     "build me a website for my coffee shop with online ordering"
Claude:  "What payment method? Stripe or PayPal?"
You:     "you decide"
Claude:  → picks the best option
         → writes the code
         → writes the tests
         → commits everything
         → done
```

You don't pick a language. You don't pick a framework. You don't even need to know what those words mean. Claude figures it all out — and over time, it learns your preferences and gets better at deciding for you.

**Say "build X" and get a working product. That's it.**

---

## 2. It remembers you.

From the moment you install autocode, Claude starts learning how you work.

- First session: Claude asks a few questions to understand you
- Fifth session: Claude already knows your preferences
- Twentieth session: Claude barely asks anything — it just builds

**The more you use it, the better it gets.** Less talking, less explaining, more building. Like a coworker who's been with you for years.

Close Claude Code tonight. Open it tomorrow. It remembers everything — your project, your decisions, your style. No re-explaining. Ever.

---

## 3. Your AI bill drops.

autocode is powered by the [I-Lang](https://ilang.ai) compression protocol. Every instruction Claude processes internally gets compressed automatically.

**You don't do anything different. You just pay less.**

Same results. 60%+ fewer tokens. The savings add up fast — especially on large projects where Claude is thinking, planning, and writing all day.

---

## Install in 30 seconds

```
/plugin marketplace add ilang-ai/autocode
/plugin install autocode@autocode
```

Restart Claude Code. Start talking. That's it.

No npm. No database. No background service. No configuration. Zero dependencies.

---

## What happens when you say things

| You say | What happens |
| --- | --- |
| "build me a ..." | Claude asks 1-2 questions, then builds the entire thing |
| "this is broken" | Claude finds the bug, writes a test, fixes it |
| "clean this up" | Claude refactors with a plan, tests everything |
| "add a feature for ..." | Claude plans it, builds it, tests it |
| "is this code any good?" | Claude reviews and reports what to improve |

You never select a workflow. You never type a command. Just talk.

---

## Why autocode instead of claude-mem?

[claude-mem](https://github.com/thedotmack/claude-mem) is popular (18K stars) and also adds memory to Claude Code. Different approach:

|  | claude-mem | autocode |
| --- | --- | --- |
| **To install** | Node 18+, Bun, uv, SQLite, Chroma | Nothing |
| **Runs in background** | HTTP server on port 37777 | No |
| **Storage** | SQLite + vector database | 1 markdown file |
| **Helps you build** | No — memory only | Yes — full auto-dev |
| **Learns your style** | No | Yes — gets better over time |
| **Saves you money** | No | Yes — 60%+ token savings |
| **License** | AGPL-3.0 | MIT |
| **Price** | Free + $CMEM token | Free forever |

---

## FAQ

**I don't know how to code. Can I still use this?**
That's exactly who this is for. You describe what you want. Claude builds it.

**Will it slow down my session?**
No. Memory loads in under 1 second.

**Does it conflict with other plugins?**
No. autocode uses its own hooks and doesn't touch anything else.

**What if I want to start fresh?**
Delete `.autocode/memory.md` in your project folder. Done.

**Is it really free?**
MIT license. No premium tier. No crypto token. No catch. Forever.

---

## Links

| | |
| --- | --- |
| 🌐 Protocol | [ilang.ai](https://ilang.ai) |
| 🇨🇳 中文 | [ilang.cn](https://ilang.cn) |
| 📄 Research | [research.ilang.ai](https://research.ilang.ai) |
| 📦 More Skills | [ilang-openclaw](https://github.com/ilang-ai/ilang-openclaw) |
| 🐦 X | [@adsorgcn](https://x.com/adsorgcn) |

---

<p align="center">
  <strong>I-Lang Research · Eastsoft Inc. · Canada</strong><br>
  <sub>MIT · Zero Dependencies · Free Forever</sub>
</p>
