# ⚡ AutoCode

<div align="center">

### You say it. All coding is automatic.

[![MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![v3.3](https://img.shields.io/badge/version-3.3.3-blue.svg)](https://github.com/ilang-ai/autocode/releases)
[![Skills](https://img.shields.io/badge/Skills-39-blueviolet)](#-39-professional-skills)
[![Zero Deps](https://img.shields.io/badge/Dependencies-0-brightgreen)](#step-1-get-a-cloud-computer)
[![Cost](https://img.shields.io/badge/Dev%20Cost-Save%2060%25+-orange)](#-save-money)
[![Memory](https://img.shields.io/badge/Memory-Persistent-purple)](#-memory)

[🇨🇳 中文](docs/README.zh.md) · [🇯🇵 日本語](docs/README.ja.md) · [🇰🇷 한국어](docs/README.ko.md) · [🇪🇸 Español](docs/README.es.md) · [🇧🇷 Português](docs/README.pt.md) · [🇩🇪 Deutsch](docs/README.de.md) · [🇫🇷 Français](docs/README.fr.md) · [🇷🇺 Русский](docs/README.ru.md) · [🇸🇦 العربية](docs/README.ar.md) · [🇮🇳 हिन्दी](docs/README.hi.md)

---

> **AutoCode = Automatic Coding.**
>
> You say what you want. AutoCode builds it.
> Which technology, how to code, how to test, how to deploy — all automatic.
> You don't need to know anything about programming.

---

</div>

## 🚀 Complete Setup Guide (From Zero)

If you already have Claude Code, [skip to Step 3](#step-3-install-autocode).

---

### Step 1: Get a Cloud Computer

You need a cloud computer (VPS) to run AutoCode. Think of it as a computer in the cloud that's always on — you connect to it from your browser or terminal.

**👉 Go to [dev.ilang.ai](https://dev.ilang.ai)** — this takes you to Vultr, a cloud computer provider. New users get **$300 free credit** (enough for over a year).

**How to sign up:**

1. Click the link, you'll see a registration page
2. Enter your email and create a password
3. Check your email, click the verification link
4. Add payment method — Vultr supports **credit card, PayPal, and Alipay (支付宝)**
5. Your $300 free credit is applied automatically

**How to create your cloud computer:**

1. After logging in, click **"Deploy +"** button (top right)
2. Choose **"Deploy New Server"**
3. **Type:** Select **"Cloud Compute — Shared CPU"** (cheapest option, perfect for development)
4. **Location:** Choose the one closest to you (e.g., Tokyo for Asia, New York for Americas, London for Europe)
5. **Image (Operating System):** Select **"Debian 12"**
6. **Plan:** Select the **"$6/month"** plan (1 CPU, 1GB RAM — enough for AutoCode)
7. Click **"Deploy Now"**

Wait 1-2 minutes. When the status changes from "Installing" to **"Running"**, your cloud computer is ready.

**How to find your connection info:**

Click on your server name. You'll see three important pieces of information:
- **IP Address** — looks like `149.28.xxx.xxx`
- **Username** — usually `root`
- **Password** — click the eye icon to reveal, click the copy button to copy

---

### Step 2: Connect and Install

**On Windows:** Download and open [PuTTY](https://putty.org). Enter your IP address, click Open. Type your username and password when asked.

**On Mac:** Open Terminal (search "Terminal" in Spotlight). Type:
```
ssh root@your-ip-address
```
Then enter your password when asked.

**On Phone (iOS/Android):** Download "Termius" from App Store / Google Play. Add a new host with your IP, username, and password.

Once connected, you'll see a black screen with text ending in `#` — this means you're in.

**Now paste this one command and press Enter:**

```bash
curl -fsSL https://raw.githubusercontent.com/ilang-ai/autocode/main/setup.sh | bash
```

Wait 2-3 minutes. It installs everything automatically. When you see ✅, move to the next step.

---

### Step 3: Install AutoCode

Type `claude` and press Enter:

```bash
claude
```

**First time?** Claude Code will ask you to log in. Follow the on-screen instructions — you'll need an [Anthropic account](https://console.anthropic.com).

**After login**, just say this to Claude Code (type it and press Enter):

```
Install the AutoCode plugin from github.com/ilang-ai/autocode
```

Claude Code will download and install AutoCode automatically. During installation, it will ask you some permission questions. **For every question, choose the option that says "Yes, and don't ask again"** or the one with the highest number. This saves you from being asked the same thing repeatedly.

When it says the plugin is installed, type `/exit` and press Enter, then type `claude` again to restart.

---

### Step 4: Start Building

Now just say what you want. For example:

```
Build me a restaurant website with online reservations
```

AutoCode will:
- Ask you 1-2 simple questions (like "Should users sign up?")
- Pick the best technology automatically
- Build step by step, showing you progress
- Test and check security after each feature
- Review the entire project when done
- Give you a URL to see the result

**That's it. You're a developer now.**

---

## 📖 What Happens Next

### First time → AutoCode asks 2 questions, then builds everything

```
You:     "Build me a restaurant website"
AutoCode: → "Should users sign up? Mainly mobile or desktop?"
You:     "Yes, mobile"
AutoCode: → Builds in 12 steps, 25 minutes
          → "Done. Open this URL."
```

### Fifth time → AutoCode knows your preferences

```
You:     "Build an online store for a flower shop"
AutoCode: → Starts immediately, no questions
          → "Done. Same stack, no extra cost."
```

### Twentieth time → You realize you understand code

```
You:     "New project"
AutoCode: → Barely asks anything, builds exactly what you want
          → You watch and understand what it's doing
```

---

## 🧠 39 Professional Skills

All automatic. You never activate them. AutoCode detects what's needed and acts.

<details>
<summary><b>📋 Understanding (5)</b> — Figuring out what you want</summary>

| Skill | What it does |
|-------|-------------|
| Intent Detection | Knows what you want instantly |
| Smart Questions | Max 2, never technical |
| Scope Detection | Small task or big project |
| Communication Adapt | Matches your language and level |
| Requirement Lock | Stays on track |
</details>

<details>
<summary><b>📐 Planning (6)</b> — Picks the best approach</summary>

| Skill | What it does |
|-------|-------------|
| Task Breakdown | Big → small steps, 2-5 min each |
| Priority | Core first, polish last |
| Time Estimate | "About 20 minutes" |
| Risk Warning | Warns before problems happen |
| Best Choice | Auto-picks fastest/cheapest/most stable tech |
| Decision Translation | Explains in money/speed/stability |
</details>

<details>
<summary><b>🔨 Building (3)</b> — From skeleton to product</summary>

| Skill | What it does |
|-------|-------------|
| Scaffold | Project foundation |
| Feature Build | One by one |
| UI Build | All devices |
</details>

<details>
<summary><b>✅ Quality (4)</b> — Silent, in the background</summary>

| Skill | What it does |
|-------|-------------|
| Auto Check | Reviews code logic silently |
| Security | Blocks attacks, encrypts data |
| Performance | Fast + cheap to run |
| Multi-Device | Phone/tablet/desktop |
</details>

<details>
<summary><b>🔧 Debugging (5)</b> — You say "something's wrong", it fixes it</summary>

| Skill | What it does |
|-------|-------------|
| Observe | Investigates on its own |
| Reason | Finds root cause |
| Fix & Verify | Fixes + confirms |
| Explain | Tells you in your words |
| Fix Guide | Stuck? Asks simple questions. Can't figure it out here? It tells you exactly how to screenshot and upload to [claude.ai](https://claude.ai) where AI can see images. |
</details>

<details>
<summary><b>💾 Saving (3)</b> — ⭐ Soul of AutoCode</summary>

| Skill | What it does |
|-------|-------------|
| ⭐ **Full Review** | **Every save: reviews entire project from beginning. You watch and learn.** |
| Milestone | Celebrates achievements |
| Rollback | One-click undo |
</details>

<details>
<summary><b>🚀 Deployment (4)</b> — Go live</summary>

| Skill | What it does |
|-------|-------------|
| Local Run | Your server, your URL |
| Global Deploy | CDN, fast everywhere |
| Edge Deploy | Free tier |
| File Transfer | Server-to-server |
</details>

<details>
<summary><b>📊 Progress (5)</b> — Progress + emotional reward</summary>

| Skill | What it does |
|-------|-------------|
| Live Progress | "✅ 60% (3/5)" |
| Efficiency Compare | "Outsourcing = $5K. You = 25 min." |
| Celebration | "🎉 Done!" |
| Daily Summary | Today + tomorrow |
| Roadmap | Multi-day plan |
</details>

<details>
<summary><b>🎓 Learning (3)</b> — Gets better every session</summary>

| Skill | What it does |
|-------|-------------|
| Preferences | Remembers your style |
| Patterns | Learns what you build |
| Mistakes | Never repeats errors |
</details>

<details>
<summary><b>⚙️ Engine (2)</b> — Save money + Remember</summary>

| Skill | What it does |
|-------|-------------|
| Compression | I-Lang protocol, 60%+ cost savings |
| Memory | Remembers across sessions |
</details>

---

## 💰 Save Money

Every time AI thinks, plans, and writes code, it costs money. AutoCode uses [I-Lang](https://ilang.ai) compression to reduce internal processing costs by 60%+. You don't do anything different — just talk normally. **Same result, 60%+ less cost.**

## 🧠 Memory

Close today → open tomorrow → AutoCode remembers everything. Your preferences, decisions, project status — all saved. Gets better every session. Like a partner who's been with you for years.

---

## 🌍 Different from Everything Else

Every AI coding tool on the market assumes you know how to code. AutoCode doesn't.

|  | Other tools | **AutoCode** |
| --- | --- | --- |
| **For** | Programmers | **Everyone** |
| **Requires** | Coding knowledge | **Speech** |
| **Does** | Helps write code | **Builds products** |
| **Tech decisions** | Asks you | **Decides for you** |
| **Memory** | Mostly none | **Automatic** |
| **Dev cost** | No savings | **-60%+** |
| **Learns you** | No | **Yes** |
| **Language** | Usually English | **Your language** |
| **Dependencies** | Various | **Zero** |

---

## ❓ Troubleshooting

<details>
<summary><b>Something went wrong and I don't know what happened</b></summary>

Just say "something's wrong". AutoCode will ask you simple questions like "what do you see on the screen?" If it still can't figure it out, it will tell you exactly how to take a screenshot and upload it to claude.ai where the AI can see images.
</details>

<details>
<summary><b>The /plugin command doesn't work</b></summary>

Don't worry about /plugin commands. Just say to Claude Code: "Install the AutoCode plugin from github.com/ilang-ai/autocode" — it will handle everything through conversation.
</details>

<details>
<summary><b>Claude Code asks permission questions I don't understand</b></summary>

Always choose the option with the highest number, or the one that says "Yes, and don't ask again". This is safe — AutoCode is open source and contains no executable code, only text instructions.
</details>

<details>
<summary><b>I can't connect to my cloud computer</b></summary>

Double-check your IP address, username, and password from the Vultr dashboard. Make sure the server status is "Running" (green). If using PuTTY, make sure you entered the IP in the "Host Name" field and port is 22.
</details>

<details>
<summary><b>The curl command fails</b></summary>

Make sure you copied the entire command. It should start with `curl` and end with `bash`. If your server is very new, try running `apt-get update` first, then try the curl command again.
</details>

<details>
<summary><b>Everything is in English and I don't understand</b></summary>

Just speak in your language. AutoCode detects your language from your first message and responds in the same language. Chinese, Japanese, Spanish, Arabic — all supported.
</details>

<details>
<summary><b>Is it safe? It's a third-party plugin.</b></summary>

AutoCode is 100% open source (MIT license). It contains only text files (markdown) — no executable code, no network connections, no data collection. Claude Code itself verified this during our testing: "It's just prompt files, no malicious content." You can read every file in this repository.
</details>

<details>
<summary><b>How much does it cost?</b></summary>

AutoCode is free forever (MIT license). The only cost is your cloud computer ($6/month on Vultr, or free with the $300 new user credit) and Anthropic API usage for Claude Code.
</details>

---

<div align="center">

[ilang.ai](https://ilang.ai) · [ilang.cn](https://ilang.cn) · [research.ilang.ai](https://research.ilang.ai) · [@adsorgcn](https://x.com/adsorgcn) · [dev.ilang.ai](https://dev.ilang.ai)

**I-Lang Research · Eastsoft Inc. · Canada · MIT · Free Forever**

*You say it. AutoCode builds it.*

*User feedback after first use: "I don't even know who did the work — I thought I was supposed to code, but it was already done."*

</div>
