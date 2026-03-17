# ⚡ autocode 中文使用手册

### 普通人也能用 Claude Code 开发产品。不需要任何编程基础。

---

## 一、你说话，Claude 干活

只需要几句话描述你想要什么，Claude Code 自动帮你做开发。不需要学编程，不需要懂技术，不需要知道什么是框架、什么是语言。

```
你：     "帮我做一个咖啡店的网站，要能在线点单"
Claude:  "付款方式用微信还是支付宝？"
你：     "你看着办"
Claude:  → 自己选最合适的方案
         → 自己写代码
         → 自己写测试
         → 自己提交
         → 搞定
```

Claude 问你用哪种语言编写？你可以直接回答"你看着办"。它会替你做最优选择。

**用得越久，它越懂你。** 到后来它连问都不用问，直接按你的习惯来。超越顶级程序员的水平——因为顶级程序员不了解你，但它了解。

---

## 二、它记住你

从你安装 autocode 的第一天起，Claude 就开始记录你的行为习惯。

- 第一次用：Claude 问几个问题了解你
- 第五次用：Claude 已经知道你喜欢什么
- 第二十次用：Claude 几乎不问了——直接干

**用得越多，越默契。废话越少，效率越高。**

今天关掉 Claude Code，明天打开，它还记得——你的项目、你的决策、你的风格。不需要重新解释。永远不需要。

就像一个跟了你好多年的搭档。

---

## 三、Token 费用直接砍掉六成

autocode 底层由 [I-Lang](https://ilang.cn)（爱语言）压缩协议驱动。Claude 内部处理的每一条指令都自动压缩。

**你什么都不用做。照常说话。费用自己就降了。**

结果一样。Token 花销节约60%以上。项目越大，省得越多——尤其是那些让 Claude 整天思考、规划、写代码的大项目。

---

## 30秒安装

```
/plugin marketplace add ilang-ai/autocode
/plugin install autocode@autocode
```

重启 Claude Code。开始说话。完事。

不需要装 npm。不需要数据库。不需要后台服务。不需要配置。零依赖。

---

## 你说什么，Claude做什么

| 你说 | 发生什么 |
| --- | --- |
| "帮我做一个..." | Claude 问1-2个问题，然后全自动构建 |
| "这个有bug" | Claude 找到原因，写测试，修复 |
| "这块代码太乱了" | Claude 按计划重构，全部测试通过 |
| "加一个XX功能" | Claude 规划、开发、测试，一条龙 |
| "帮我看看这代码怎么样" | Claude 审查，告诉你哪里该改 |

不用选工作流。不用打命令。说话就行。

---

## 为什么不用 claude-mem？

[claude-mem](https://github.com/thedotmack/claude-mem) 有18K星，也给 Claude Code 加记忆。但思路不同：

|  | claude-mem | autocode |
| --- | --- | --- |
| **安装要求** | Node 18+, Bun, uv, SQLite, Chroma | 不需要任何东西 |
| **后台服务** | HTTP服务跑在37777端口 | 没有 |
| **存储** | SQLite + 向量数据库 | 一个markdown文件 |
| **帮你开发** | 不能——只有记忆 | 能——全自动开发 |
| **学你习惯** | 不能 | 能——越用越默契 |
| **帮你省钱** | 不能 | 能——省60%+的token |
| **协议** | AGPL-3.0 | MIT |
| **价格** | 免费 + $CMEM代币 | 永久免费 |

---

## 常见问题

**我完全不懂编程，能用吗？**
就是为你设计的。你描述你想要什么，Claude来做。

**会不会拖慢速度？**
不会。记忆加载不到1秒。

**跟别的插件冲突吗？**
不冲突。autocode用自己的hook，不碰别的。

**想重新开始怎么办？**
删掉项目里的 `.autocode/memory.md`，下次重新来。

**真的永久免费？**
MIT协议。没有付费版。没有代币。没有套路。永远免费。

---

## 链接

- 协议官网：[ilang.ai](https://ilang.ai)
- 中文官网：[ilang.cn](https://ilang.cn)
- 研究论文：[research.ilang.ai](https://research.ilang.ai)
- GitHub：[github.com/ilang-ai/autocode](https://github.com/ilang-ai/autocode)
- X：[@adsorgcn](https://x.com/adsorgcn)

---

<p align="center">
  <strong>I-Lang Research · Eastsoft Inc. · Canada</strong><br>
  <sub>MIT · 零依赖 · 永久免费</sub>
</p>
