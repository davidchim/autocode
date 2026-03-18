# ⚡ AutoCode

<div align="center">

### 你说一句话。所有编程，全自动。

[![MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![v3.3](https://img.shields.io/badge/version-3.3.3-blue.svg)](https://github.com/ilang-ai/autocode/releases)
[![Skills](https://img.shields.io/badge/专业技能-39项-blueviolet)](#39项专业技能)
[![Zero Deps](https://img.shields.io/badge/依赖-0-brightgreen)](#第一步买一台云电脑)
[![Cost](https://img.shields.io/badge/开发费用-节省60%25+-orange)](#省钱)
[![Memory](https://img.shields.io/badge/记忆-跨天持久-purple)](#记忆)

[English](../README.md) · [🇯🇵 日本語](README.ja.md) · [🇰🇷 한국어](README.ko.md) · [🇪🇸 Español](README.es.md) · [🇧🇷 Português](README.pt.md) · [🇩🇪 Deutsch](README.de.md) · [🇫🇷 Français](README.fr.md) · [🇷🇺 Русский](README.ru.md) · [🇸🇦 العربية](README.ar.md) · [🇮🇳 हिन्दी](README.hi.md)

---

> **AutoCode = 自动编程。**
>
> 你说一句话，AutoCode 帮你做出来。
> 选什么技术、怎么写代码、怎么测试、怎么上线——全部自动。
> 你完全不需要懂编程。

---

</div>

## 🚀 完整安装教程（从零开始）

如果你已经有 Claude Code，[直接跳到第三步](#第三步安装-autocode)。

---

### 第一步：买一台云电脑

你需要一台云电脑（VPS）来运行 AutoCode。你可以把它理解为一台放在云端的电脑，24小时开机，你随时连上去用。

**👉 打开 [dev.ilang.ai](https://dev.ilang.ai)** — 跳转到 Vultr（云电脑供应商）。新用户赠送 **300美元免费额度**，够用一年以上。

**注册步骤：**

1. 打开链接，看到注册页面
2. 输入你的邮箱，设一个密码（至少10位，要包含大小写字母和数字）
3. 去邮箱点验证链接
4. 付款方式选**支付宝（Alipay）**— 支持支付宝、微信、信用卡、PayPal
5. 充值 **10美元**（支付宝扫码付就行）
6. 300美元免费额度自动到账

**创建云电脑：**

1. 登录后，点右上角 **"Deploy +"**
2. 选 **"Deploy New Server"**
3. **Type（类型）：** 选 **"Cloud Compute — Shared CPU"**（最便宜，做开发完全够用）
4. **Location（位置）：** 选离你最近的（亚洲选东京Tokyo，国内选新加坡Singapore）
5. **Image（系统）：** 选 **"Debian 12"**
6. **Plan（套餐）：** 选 **$6/月** 那个（1核CPU，1G内存，够用了）
7. 点 **"Deploy Now"**

等1-2分钟，状态从红色 Installing 变成绿色 **Running**，你的云电脑就好了。

**找到连接信息：**

点击你的服务器名字，会看到三个重要信息：
- **IP Address（IP地址）** — 一串数字，类似 `149.28.xxx.xxx`
- **Username（用户名）** — 通常是 `root`
- **Password（密码）** — 点眼睛图标显示，点复制按钮复制

---

### 第二步：连上去，装环境

**Windows用户：** 下载 [PuTTY](https://putty.org)，打开后在 Host Name 填你的IP地址，点 Open。输入用户名和密码。

**Mac用户：** 打开"终端"（Spotlight搜索 Terminal），输入：
```
ssh root@你的IP地址
```
然后输入密码。

**手机用户（iPhone/安卓）：** 在应用商店下载 "Termius"，新建连接，填IP、用户名、密码。

连上后，你会看到黑色屏幕，最后一行有个 `#` 符号——说明你已经进去了。

**现在粘贴这一行命令，按回车：**

```bash
curl -fsSL https://raw.githubusercontent.com/ilang-ai/autocode/main/setup.sh | bash
```

等2-3分钟，全自动安装。看到 ✅ 就表示装好了。

---

### 第三步：安装 AutoCode

输入 `claude` 按回车：

```bash
claude
```

**第一次用？** Claude Code 会让你登录。按屏幕提示操作——你需要一个 [Anthropic 账号](https://console.anthropic.com)。

**登录后**，直接说这句话（输入后按回车）：

```
帮我安装autocode插件，地址 github.com/ilang-ai/autocode
```

Claude Code 会自动下载安装 AutoCode。安装过程中会弹出一些权限确认。**每次都选数字最大的那个选项**（通常是"同意，以后不再问"）。这样以后就不会重复弹了。

装好后输入 `/exit` 回车，再输入 `claude` 回车重启。

---

### 第四步：开始做产品

直接说你想要什么。比如：

```
帮我做一个餐厅网站，要能在线订位
```

AutoCode 会：
- 问你1-2个简单问题（比如"需要用户注册吗？"）
- 自动选择最省钱最快的技术方案
- 一步步做，实时告诉你进度
- 每做完一个功能自动检查质量和安全
- 全部做完后从头复盘整个项目
- 给你一个网址，打开就能看到效果

**就这样。你现在是开发者了。**

---

## 📖 用了之后会怎么样

### 第一次 → AutoCode 问2个问题，然后全部搞定

```
你：      "帮我做一个餐厅网站"
AutoCode： → "需要用户注册吗？手机为主还是电脑？"
你：      "要注册，手机"
AutoCode： → 12步完成，25分钟
            → "做好了。打开这个网址看效果。"
```

### 第五次 → AutoCode 已经记住你的偏好

```
你：      "再做一个花店的在线商城"
AutoCode： → 不问了，直接开始做
            → "做好了。跟上次一套方案，服务器费用不增加。"
```

### 第二十次 → 你发现自己能看懂代码了

```
你：      "做个新项目"
AutoCode： → 几乎不问，直接做
            → 你看着它工作，发现自己已经理解产品是怎么做出来的
```

**用户第一次用完的反馈："我都不知道谁在工作了——我以为要编程，结果自己弄完了。"**

---

## 🧠 39项专业技能

全部自动工作。你不需要知道它们存在。

<details>
<summary><b>📋 需求理解（5项）</b></summary>

| 技能 | 说明 |
|------|------|
| 意图识别 | 你一开口它就知道你要什么 |
| 精准提问 | 最多问2个，从不问技术问题 |
| 范围判断 | 自动判断大小任务 |
| 说话方式适配 | 你说什么语言它就说什么语言 |
| 需求锁定 | 确认后不跑题 |
</details>

<details>
<summary><b>📐 智能规划（6项）</b></summary>

| 技能 | 说明 |
|------|------|
| 任务拆解 | 大事拆成小步骤，每步2-5分钟 |
| 优先级排序 | 先做核心，再做锦上添花 |
| 时间预估 | "大概20分钟搞定" |
| 风险预警 | 提前告诉你哪里可能有坑 |
| 最优方案选择 | 自动选最快最省最稳的方案 |
| 决策翻译 | 用"省多少钱、快多少"来解释每个决定 |
</details>

<details>
<summary><b>🔨 产品构建（3项）</b></summary>

| 技能 | 说明 |
|------|------|
| 搭建框架 | 自动搭好骨架 |
| 功能开发 | 一个一个做，做完一个报告一个 |
| 页面制作 | 所有设备都能用 |
</details>

<details>
<summary><b>✅ 自动质检（4项）</b></summary>

| 技能 | 说明 |
|------|------|
| 自动检查 | 检查代码逻辑，你完全无感 |
| 安全防护 | 防黑客、防注入、加密 |
| 速度优化 | 跑得快、费用低 |
| 多设备适配 | 手机、平板、电脑 |
</details>

<details>
<summary><b>🔧 问题修复（5项）</b></summary>

| 技能 | 说明 |
|------|------|
| 观察现象 | 自己去看怎么了 |
| 推理原因 | 找到根本原因 |
| 修复验证 | 修好后确认没新问题 |
| 人话解释 | 用你能懂的话告诉你 |
| 引导求助 | 解决不了？它会教你怎么截图上传到 [claude.ai](https://claude.ai)，那边的AI能看图片帮你解决 |
</details>

<details>
<summary><b>💾 进度保存（3项）— ⭐ 灵魂功能</b></summary>

| 技能 | 说明 |
|------|------|
| ⭐ **全面复盘** | **每次保存从头检查整个项目。你看着它复盘，不知不觉自己也理解了。** |
| 里程碑标记 | 重大节点庆祝 |
| 版本回退 | 一键退回 |
</details>

<details>
<summary><b>🚀 部署上线（4项）</b></summary>

| 技能 | 说明 |
|------|------|
| 本地运行 | 在你服务器上跑 |
| 全球上线 | CDN加速，全球秒开 |
| 边缘部署 | 免费方案 |
| 文件传输 | 服务器对传 |
</details>

<details>
<summary><b>📊 项目管理（5项）</b></summary>

| 技能 | 说明 |
|------|------|
| 实时进度 | "✅ 60%（3/5个功能）" |
| 效率对标 | "外包要2万，你25分钟做完了" |
| 完成庆祝 | "🎉 核心功能完成！" |
| 每日总结 | 今天+明天 |
| 项目路线图 | "5天计划，第2天" |
</details>

<details>
<summary><b>🎓 越用越懂你（3项）</b></summary>

| 技能 | 说明 |
|------|------|
| 偏好记录 | 记住你的风格 |
| 规律学习 | 学你做什么产品 |
| 不犯同样的错 | 犯过的错不再犯 |
</details>

<details>
<summary><b>⚙️ 核心引擎（2项）</b></summary>

| 技能 | 说明 |
|------|------|
| 指令压缩 | I-Lang协议，开发费用降60%+ |
| 跨天记忆 | 关了明天打开还记得 |
</details>

---

## 💰 省钱

AI编程是要花钱的。每次AI思考、规划、写代码，都在产生费用。AutoCode 用 [I-Lang](https://ilang.cn) 压缩协议自动压缩内部处理。**你什么都不用做，开发费用直接降低60%以上。**

## 🧠 记忆

今天关了，明天打开，它还记得。你的偏好、决策、项目状态全部记住。越用越默契。就像一个跟了你好几年的搭档。

---

## 🌍 和其他AI编程工具有什么不同

所有AI编程工具都假设你会编程。AutoCode不假设。

|  | 其他工具 | **AutoCode** |
| --- | --- | --- |
| **面向谁** | 程序员 | **所有人** |
| **前提** | 你得懂编程 | **你会说话就行** |
| **核心** | 帮你写代码 | **替你做产品** |
| **技术决策** | 问你 | **替你选** |
| **记忆** | 多数没有 | **自动记忆** |
| **开发费用** | 不省 | **省60%+** |
| **学你习惯** | 不学 | **越用越懂你** |
| **语言** | 通常英文 | **你说什么它说什么** |
| **依赖** | 从轻到重 | **零** |

---

## ❓ 遇到问题？

<details>
<summary><b>出了问题不知道怎么说</b></summary>
说"有问题"就行。AutoCode会问你简单的问题来定位。如果它在终端里也搞不定，它会教你怎么截图上传到 claude.ai，那边能看图片帮你解决。
</details>

<details>
<summary><b>/plugin命令不好使</b></summary>
别管/plugin命令。直接跟Claude Code说："帮我安装autocode插件，地址 github.com/ilang-ai/autocode"。说话比命令好使。
</details>

<details>
<summary><b>弹出英文确认框看不懂</b></summary>
每次都选数字最大的那个选项。AutoCode是开源的纯文本文件，不含任何可执行代码，选同意是安全的。
</details>

<details>
<summary><b>连不上云电脑</b></summary>
去 Vultr 后台检查三样东西：IP地址对不对、服务器是不是绿色Running状态、密码有没有复制对（点眼睛图标显示密码）。
</details>

<details>
<summary><b>curl命令失败</b></summary>
确认命令是从 curl 开头到 bash 结尾完整复制的。如果服务器刚创建，先运行 apt-get update 再试。
</details>

<details>
<summary><b>安全吗？第三方插件靠谱吗？</b></summary>
AutoCode 100%开源（MIT协议），只包含文本文件（markdown），没有可执行代码、不联网、不采集数据。Claude Code自己审查过："纯文字提示词文件，没有恶意内容。"你可以看这个仓库里的每一个文件。
</details>

<details>
<summary><b>要多少钱？</b></summary>
AutoCode永久免费。唯一的费用是云电脑（Vultr $6/月，新用户$300免费额度够用一年多）和 Anthropic API 的使用费。
</details>

---

<div align="center">

[ilang.ai](https://ilang.ai) · [ilang.cn](https://ilang.cn) · [research.ilang.ai](https://research.ilang.ai) · [@adsorgcn](https://x.com/adsorgcn) · [dev.ilang.ai](https://dev.ilang.ai)

**I-Lang Research · Eastsoft Inc. · Canada · MIT · 永久免费**

*你说一句话。AutoCode 做完所有事。*

*用户第一次用完的反馈："我都不知道谁在工作了——我以为要编程，结果自己弄完了。"*

</div>
