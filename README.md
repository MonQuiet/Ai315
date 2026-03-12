# 🛡️ ai315：AI 时代的消费者权益保护指南与工具箱

[![License: MIT & CC BY-NC-ND](https://img.shields.io/badge/License-Dual_License-blue.svg)](#-开源协议与免责声明-license--disclaimer)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)
[![Java](https://img.shields.io/badge/Java-17%2B-ED8B00?style=flat-square&logo=openjdk&logoColor=white)](#)
[![Telegram Bot](https://img.shields.io/badge/Telegram-Bot_API-2CA5E0?style=flat-square&logo=telegram&logoColor=white)](#)

> **每年的 3 月 15 日是国际消费者权益日。但在狂飙突进的 AI 时代，又会产生哪些损害消费者权益的问题？**
> 
> 大模型套壳欺诈、付费后偷偷“降智”、单方面缩水用户权益、霸王条款掠夺隐私数据……技术的红利不应以牺牲普通用户的权益为代价。`ai315` 项目应运而生，旨在通过开源社区的力量，曝光 AI 乱象，提供隐私保护工具，并倡导建立 AI 时代的数字消费者权利。

---

## 🎯 核心模块 (Core Modules)

本项目采用“文档与工具并重”的主从式架构，涵盖四大核心解决方案：

### 1. 📖 曝光与防范：AI 产品避雷针与维权知识库
AI 技术门槛高，信息差极大。我们通过群众的力量，揭露以下几类侵害 AI 消费者权益的恶劣行为：

* **[套壳与虚假宣传黑名单](docs/blacklist.md)：** 收集市面上以“自研旗舰大模型”为噱头进行虚假宣传，实际却仅仅是套壳开源模型，并收取和真正旗舰大模型同等高昂费用的应用。
* **[模型“降智”与偷梁换柱记录](docs/api_fraud.md)：** 曝光在使用过程中突然出现的模型智商下降（“降智”现象），以及 API 代理商用低阶模型冒充高级模型（如用 Flash 模型冒充 Pro 模型）坑骗开发者的行为。
* **[退费维权与权益缩水曝光台](docs/rights_protection.md)：** * **针对小型企业：** 揭露小型 AI API 中转站跑路或无理拒绝退费的问题。
    * **针对大型公司：** 监督并曝光大型 AI 公司对付费用户权益的暗中侵害（例如：在没有任何正当理由的情况下，单方面降低 Pro 用户每月承诺的 Token 额度、下调并发请求上限，或变相修改计费倍率的行为）。
* **[隐私侵权与订阅陷阱](docs/dark_patterns.md)：** 曝光默认将用户私密对话/核心代码用于模型训练且不可关闭的霸王条款，以及以“免费试用”为诱饵，实则绑定隐蔽自动续费且极难取消的“黑模式（Dark Patterns）”产品。

### 2. 🤖 识破伪装：AI 鉴伪与反诈机器人 (`/tools/anti-fraud-bot`)
面对真假难辨的 AI 内容，我们提供一个开箱即用的 Telegram 检测机器人。
* **硬核技术栈：** 基于 Java 和 OpenClaw 智能体框架开发，完美处理复杂的大模型调度与 Telegram 事件路由。
* **极低资源消耗：** 经过 JVM 启动参数调优，即使在可用内存受限的服务器环境下，依然能保持稳定运行，有效防止 OOM。
* **一键查验：** 遇到可疑话术或推广链接，直接转发给 Bot，它将调用内置的检索技能进行全网比对，迅速输出“AI 生成概率”及风险预警。

### 3. 🔐 隐私守护：Prompt 数据脱敏网关 (`/tools/privacy-gateway`)
在使用公共大模型服务时，极易将包含个人隐私、企业机密的代码或文本直接发送到云端。
* **本地代理拦截：** 一个轻量级的中间件服务，在用户的 Prompt 发送给云端之前，自动识别并替换掉敏感信息（如姓名、凭据），等模型返回结果后再无缝还原。

### 4. ⚖️ 权益倡导：AI 消费者数字权利宣言
* **[AI 时代消费者权利草案](docs/declaration.md)：** 倡导用户的“知情权”、“被遗忘权”与“拒绝自动化决策权”。
* **[开发者合规 Checklist](docs/developer_checklist.md)：** 提供一份 AI 产品上线前的消费者权益保护自查清单。

---

## 📂 目录结构 (Directory Structure)

```text
ai315/
├── .github/
│   └── ISSUE_TEMPLATE/
│       └── blacklist_report.md      # 严格的打假证据提交模板
├── docs/                            # 📚 核心知识库 (Markdown 文本)
│   ├── blacklist.md                 # 曝光：套壳与虚假宣传
│   ├── api_fraud.md                 # 曝光：降智与 API 偷梁换柱
│   ├── rights_protection.md         # 曝光：退费跑路与权益缩水
│   ├── dark_patterns.md             # 曝光：隐私侵权与订阅陷阱
│   ├── scam_cases.md                # 案例：AI 诈骗防范指南
│   └── declaration.md               # 倡议：AI 时代消费者权利草案
├── tools/                           # 🛠️ 核心代码区 (Java 独立工程模块)
│   ├── anti-fraud-bot/              # Telegram 反诈查验机器人
│   │   ├── src/main/java/...        # OpenClaw 核心逻辑与 Tg 监听
│   │   ├── pom.xml                  # Maven 依赖
│   │   └── scripts/start.sh         # 生产环境低内存占用启动脚本
│   └── privacy-gateway/             # (规划中) 数据脱敏代理网关
├── CONTRIBUTING.md                  # 参与指南
├── DISCLAIMER.md                    # 法律声明
└── README.md                        # 项目主页
🚀 如何参与 (Contributing)
ai315 是一场属于全体消费者的自救行动，无论你是否懂代码，都可以加入我们！

提交打假证据： 遇到疑似套壳、暗中降智、乱收费或 AI 诈骗？请使用严格的 Issue 模板 提交证据（必须包含客观测试截图或抓包记录）。

贡献 Java 代码： 欢迎参与 /tools 目录下鉴伪 Bot 和隐私网关的开发。详情请参阅 贡献指南。

传播发声： 给本项目点个 Star ⭐️，并分享给更多人。

⚖️ 开源协议与免责声明 (License & Disclaimer)
本项目采用双重协议 (Dual Licensing)：

代码部分 (/tools)： 采用 MIT License。

内容部分 (/docs 及文本)： 采用 CC BY-NC-ND 4.0 协议。允许自由分享科普，但严禁商业牟利或篡改定性结论。

⚠️ 免责声明：
本项目收录的名单均基于社区提供的客观测试或公开记录。项目旨在打破信息差，不针对任何特定企业或个人，不构成法律建议。如相关开发者认为收录有误，请附带技术证明提交 Issue 申诉，查证后我们将第一时间修正。严禁在本项目中进行人身攻击或恶意商业诋毁。
