# 🛡️ Ai315: Consumer Rights Protection Guide & Toolset in the AI Era

[![License: MIT & CC BY-NC-ND](https://img.shields.io/badge/License-Dual_License-blue.svg)](#-license--disclaimer)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)
[![Java](https://img.shields.io/badge/Java-17%2B-ED8B00?style=flat-square&logo=openjdk&logoColor=white)](#)
[![Telegram Bot](https://img.shields.io/badge/Telegram-Bot_API-2CA5E0?style=flat-square&logo=telegram&logoColor=white)](#)

*Read this in other languages: [简体中文](README.md)*

> **March 15th is World Consumer Rights Day. But in today’s rapidly evolving AI era, what new threats to consumer rights are emerging?**
> 
> AI model-wrapper scams, silent AI "nerfing" (downgrading capabilities post-payment), unilateral shrinkage of user benefits, and predatory data harvesting... The dividends of technology should not come at the expense of ordinary users' rights. The `Ai315` project was born to expose AI malpractices through the power of the open-source community, provide privacy protection tools, and advocate for digital consumer rights in the AI era.

---

## 🌟 Our Vision

In an age where generative AI is fundamentally changing human productivity, we firmly believe that **consumers should not be test subjects for abusive business models, nor should the "black box" of algorithms be a shield for companies to shirk responsibility.**

The vision of `Ai315` is to build a **transparent, fair, and safe** AI consumer ecosystem. We are committed to:
1. **Breaking the Information Gap:** Exposing false advertising of "wrapped" and "repackaged" models, allowing everyday consumers to understand the technical truth behind products.
2. **Defending Digital Assets:** Firmly resisting predatory practices such as Big Tech unilaterally cutting paid API token quotas or silently "nerfing" models, and exposing small fly-by-night API providers.
3. **Guarding Personal Privacy:** Providing practical technical tools to protect users' sensitive data from being abused when interacting with AI.
4. **Establishing Industry Baselines:** Advocating for the *AI Consumer Digital Rights Draft* to call on practitioners to return to the original intention of "Tech for Good."

---

## 🎯 Core Modules

This project adopts a dual-track architecture with equal emphasis on "Documentation & Tools," covering four core solutions:

### 1. 📖 Exposure & Prevention: AI Blacklist & Knowledge Base
AI has a high technical threshold and a massive information gap. We rely on crowdsourcing to expose the following egregious behaviors:

* **[Wrapper & False Advertising Blacklist](docs/blacklist.md):** Applications that falsely claim to be "proprietary flagship models" but are actually just wrappers around open-source models, charging exorbitant fees equivalent to true flagship offerings.
* **[Model "Nerfing" & API Bait-and-Switch Records](docs/api_fraud.md):** Exposing sudden drops in AI intelligence ("nerfing") during use, and API brokers baiting developers with flagship models (like Pro versions) but secretly routing requests to cheaper, lower-tier models (like Flash versions), with an included no-code anti-fraud testing guide.
* **[Refund Issues & Benefit Shrinkage Exposure](docs/rights_protection.md):**
    * **Small Enterprises:** Exposing small AI API relays that abscond or unreasonably refuse refunds.
    * **Big Tech:** Monitoring and exposing major AI companies that secretly infringe on paid users' rights (e.g., unilaterally reducing promised monthly Token quotas, lowering concurrency limits, or covertly changing billing multipliers without justification).
* **[Privacy Infringement & Dark Patterns](docs/dark_patterns.md):** Exposing predatory clauses that default to using private chats/core code for model training without opt-out options, and "free trial" baits tied to hidden, hard-to-cancel auto-renewals.

### 2. 🤖 Unmasking the Fake: Anti-Fraud Telegram Bot (`/tools/anti-fraud-bot`)
We are building a Telegram detection bot to handle indistinguishable AI content (currently a scaffold/early stage).
* **Technical direction:** Java + agent framework for complex LLM scheduling and Telegram event routing.
* **Resource goal:** Stable operation in low-memory environments.
* **Usage:** A future “one-click verification” flow for suspicious pitches or links.

### 3. 🔐 Privacy Guardian: Prompt Desensitization Gateway (`/tools/privacy-gateway`)
When using public LLM services, it is extremely easy to accidentally send code or text containing personal privacy or corporate secrets to the cloud.
* **Planned:** This module is currently in the design stage as a local proxy interceptor.
* **Core capability:** Automatically identify and mask sensitive information (like names, credentials) before the Prompt goes to the cloud, then restore it after the model returns.

### 4. ⚖️ Rights Advocacy: AI Consumer Digital Rights Declaration
* **[AI Consumer Digital Rights Draft](docs/declaration.md):** Advocating for users' "Right to Know," "Right to be Forgotten," and "Right to Reject Automated Decision-Making."
* **[Developer Compliance Checklist](docs/developer_checklist.md):** Providing a self-checklist for consumer-rights protection before an AI product launches.

---

## 📂 Directory Structure

```text
ai315/
├── .github/
│   └── ISSUE_TEMPLATE/
│       └── blacklist_report.md      # Strict evidence submission template
├── docs/                            # 📚 Core Knowledge Base (Markdown)
│   ├── blacklist.md                 # Exposure: Wrappers & false advertising
│   ├── api_fraud.md                 # Exposure: Nerfing & API bait-and-switch
│   ├── rights_protection.md         # Exposure: Refund scams & benefit shrinkage
│   ├── dark_patterns.md             # Exposure: Privacy theft & dark patterns
│   ├── scam_cases.md                # Cases: AI fraud prevention guide
│   ├── declaration.md               # Advocacy: Consumer rights draft
│   └── developer_checklist.md       # Developer compliance checklist
├── tools/                           # 🛠️ Core Code Zone (Independent Java modules)
│   ├── anti-fraud-bot/              # Telegram Anti-Fraud Bot
│   │   ├── src/main/java/...        # Core logic & entry point
│   │   ├── pom.xml                  # Maven dependencies
│   │   └── scripts/start.sh         # Production startup script (memory-optimized)
│   └── privacy-gateway/             # (Planned) Data desensitization proxy
├── CONTRIBUTING.md                  # Contribution Guidelines
├── CODE_OF_CONDUCT.md               # Community code of conduct
├── DISCLAIMER.md                    # Legal Disclaimer
├── LICENSE-DOCS                     # Docs/content license (CC BY-NC-ND 4.0)
├── SECURITY.md                      # Security policy
├── README_EN.md                     # English Homepage
└── README.md                        # Chinese Homepage
```
## 🚀 How to Contribute

Ai315 is a self-rescue movement for all consumers. Whether you know how to code or not, you can join us!

1. **Submit Evidence:** Encountered a suspected wrapper, secret nerfing, overcharging, or AI scam? Please use our strict Issue Template to submit evidence (must include objective test screenshots or packet capture logs).
2. **Contribute Java Code:** Welcome to participate in the development of the anti-fraud Bot and privacy gateway under the `/tools` directory. See [CONTRIBUTING.md](CONTRIBUTING.md) for details.
3. **Spread the Word:** Give this project a Star ⭐️ and share it with others.

## ⚖️ License & Disclaimer

This project uses Dual Licensing:

1. **Code Section (`/tools`):** Under the MIT License. See `LICENSE`.
2. **Content Section (`/docs` and text):** Under the CC BY-NC-ND 4.0 License. See `LICENSE-DOCS`. You are free to share and educate, but commercial profiteering or tampering with qualitative conclusions is strictly prohibited.

### ⚠️ Disclaimer

The lists included in this project are based on objective testing or public records provided by the community. The project aims to break the information gap, does not target any specific enterprise or individual, and does not constitute legal advice. If relevant developers believe an inclusion is incorrect, please submit an Issue appeal with technical proof. Upon verification, we will correct it immediately. Personal attacks or malicious commercial defamation are strictly prohibited in this repository.
