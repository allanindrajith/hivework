# 🐝 Hivework: AI Specialists Ready to Transform Your Workflow

> **A complete AI workforce at your fingertips** - From frontend wizards to deep-dive researchers, from reality checkers to system architects. Each agent is a specialized expert with personality, processes, and proven deliverables.

[![License: Free for Personal Use](https://img.shields.io/badge/License-Free%20for%20Personal%20Use-blue.svg)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)
[![Buy Me A Coffee](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-FFDD00?logo=buy-me-a-coffee&logoColor=000000)](https://www.buymeacoffee.com/allanidrajith)

---

## 🚀 What Is This?

**Hivework** is a unified multi-agent workforce of 345+ specialized AI agents and skills compiled across 16 major development harnesses (Claude Code, Gemini CLI, Cursor, Antigravity, OpenClaw, Codex, Windsurf, etc.).

### ⚡ Quick Demo for Judges (Test in 30 Seconds)

```bash
# 1. Preview tool auto-detection and install plan without modifying your system
./scripts/install.sh --dry-run

# 2. Compile agents for a specific target on-the-fly (e.g. Gemini CLI or Claude)
./scripts/convert.sh --tool gemini-cli

# 3. Run the automated test suite verifying cross-harness contract integrity
bash scripts/test-all.sh
```

- **🎯 Specialized**: Deep expertise in their domain (not generic prompt templates)
- **🧠 Personality-Driven**: Unique voice, communication style, and approach
- **📋 Deliverable-Focused**: Real code, processes, and measurable outcomes
- **✅ Production-Ready**: Battle-tested workflows and success metrics

---

## ⚡ Quick Start

### Automatic Installation on Your Laptop

Run the built-in installer to auto-detect installed AI tools on your system (Claude Code, Cursor, Copilot, Antigravity, Gemini CLI, Windsurf, Codex, etc.) and install agents instantly:

```bash
# Auto-detect all tools and install interactively
./scripts/install.sh

# Or install for all detected tools non-interactively
./scripts/install.sh --no-interactive
```

### Option 2: Use with Claude Code

```bash
# Install the Hivework plugin (review skills + reviewer personas)
claude plugin marketplace add allanindrajith/hivework
claude plugin install hivework@hivework

# Install all agents to your Claude Code directory
./scripts/install.sh --tool claude-code

# Or manually copy a category if you only want one division
cp engineering/*.md ~/.claude/agents/

# Then activate any agent in your Claude Code sessions:
# "Hey Claude, activate Frontend Developer mode and help me build a React component"
```

### Option 3: Use as Reference

Each agent file contains:
- Identity & personality traits
- Core mission & workflows
- Technical deliverables with code examples
- Success metrics & communication style

Browse the agents below and copy/adapt the ones you need!

### Option 4: Use with Other Tools (GitHub Copilot, Antigravity, Gemini CLI, OpenCode, OpenClaw, Cursor, Aider, Windsurf, Kimi Code, Codex, Osaurus, Hermes, Mistral Vibe, DeepSeek Harness, Qwen Code, ZCode)

```bash
# Step 1 -- generate integration files for all supported tools
./scripts/convert.sh

# Step 2 -- install interactively (auto-detects what you have installed)
./scripts/install.sh

# Or target a specific tool directly
./scripts/install.sh --tool antigravity
./scripts/install.sh --tool gemini-cli
./scripts/install.sh --tool opencode
./scripts/install.sh --tool copilot
./scripts/install.sh --tool openclaw
./scripts/install.sh --tool cursor
./scripts/install.sh --tool aider
./scripts/install.sh --tool windsurf
./scripts/install.sh --tool kimi
./scripts/install.sh --tool codex
./scripts/install.sh --tool osaurus
./scripts/install.sh --tool hermes
./scripts/install.sh --tool vibe
./scripts/install.sh --tool dsh
./scripts/install.sh --tool qwen
./scripts/install.sh --tool zcode
```

**Install only the teams you need** (not everyone wants every division):

```bash
./scripts/install.sh                                    # interactive wizard: pick tools + teams
./scripts/install.sh --tool claude-code --division engineering,security
./scripts/install.sh --tool cursor --agent frontend-developer,ui-designer
./scripts/install.sh --list teams                       # see every team + agent count
./scripts/install.sh --tool opencode --division engineering --dry-run
```

`--agent` and `--agents-file` take an agent's slug (as `--list agents` prints it), its display name, or its file name without `.md` — the id the [runbook rosters](strategy/runbooks.json) use — so a runbook's team installs as listed:

```bash
python3 -c 'import json, sys
for r in json.load(open("strategy/runbooks.json"))["runbooks"]:
    if r["slug"] == sys.argv[1]: [print(a) for g in r["roster"] for a in g["agents"]]' startup-mvp > team.txt
./scripts/install.sh --tool claude-code --agents-file team.txt
```

> **OpenCode note:** OpenCode's runtime currently registers only ~119 agents and silently drops the rest ([upstream bug](https://github.com/anomalyco/opencode/issues/27988)). Installing a subset with `--division` keeps you under that limit. The installer warns you when a selection would exceed it.

See the [Multi-Tool Integrations](#-multi-tool-integrations) section below for full details.

---

### 👥 Autonomous AI Employees Section (Free for Personal Use)

> **Full-time, autonomous business operations on your machine**  
> Located in [`employees/`](employees/). Each employee is an independent operational package with daily routines, weekly scorecards, error-recovery contracts, and schedule automation for local coding agents. Hire any employee using the [`hive-hire`](skills/hive-hire/SKILL.md) skill.

| Employee | Role & Ownership | Routines | Folder |
|---|---|---|---|
| **GTM Engineer** | Positioning, launch roadmaps, outbound drafts, directory submissions, and weekly KPI scoreboards | 8 | [`employees/gtm-engineer/`](employees/gtm-engineer/) |
| **SEO / AEO Specialist** | Keyword discovery, daily technical articles, blog publishing, and AI search engine visibility | 8 | [`employees/seo-employee/`](employees/seo-employee/) |
| **Web Dev Employee** | Site uptime monitoring, console error triage, surgical git branch fixes, and dependency upgrades | 8 | [`employees/web-dev-employee/`](employees/web-dev-employee/) |
| **Social Media Employee** | Platform-adapted copywriting, scheduled queues, human approval veto window, and reply triage | 7 | [`employees/social-media-employee/`](employees/social-media-employee/) |
| **Ad Manager** | Campaign audit reads, creative variant matrices, and ROAS optimization (budget moves require human signoff) | 7 | [`employees/ad-manager-employee/`](employees/ad-manager-employee/) |
| **Sales Employee** | ICP prospect discovery, personalized outreach drafts into user inbox, and structured follow-up cadences | 7 | [`employees/sales-employee/`](employees/sales-employee/) |
| **Customer Satisfaction** | Support inbox sweeps, high-difficulty ticket triage, and proactive churn risk detection with evidence | 8 | [`employees/customer-satisfaction-employee/`](employees/customer-satisfaction-employee/) |
| **Chief of Staff** | Cross-employee oversight, run log synthesis, silent failure alerts, and top 3 high-leverage strategic moves | 7 | [`employees/chief-of-staff/`](employees/chief-of-staff/) |

---

## 🎨 Hivework Roster

### 💻 Engineering Division

Building the future, one commit at a time.

| Agent | Specialty | When to Use |
|-------|-----------|-------------|
| 🎨 [Frontend Developer](engineering/hive-frontend-developer.md) | React/Vue/Angular, UI implementation, performance | Modern web apps, pixel-perfect UIs, Core Web Vitals optimization |
| 🏗️ [Backend Architect](engineering/hive-backend-architect.md) | API design, database architecture, scalability | Server-side systems, microservices, cloud infrastructure |
| 📱 [Mobile App Builder](engineering/hive-mobile-app-builder.md) | iOS/Android, React Native, Flutter | Native and cross-platform mobile applications |
| 🤖 [AI Engineer](engineering/hive-ai-engineer.md) | ML models, deployment, AI integration | Machine learning features, data pipelines, AI-powered apps |
| 🚀 [DevOps Automator](engineering/hive-devops-automator.md) | CI/CD, infrastructure automation, cloud ops | Pipeline development, deployment automation, monitoring |
| 🌐 [Network Engineer](engineering/hive-network-engineer.md) | Cisco IOS/IOS-XE, Juniper Junos, Palo Alto PAN-OS | Router/switch/firewall configuration, BGP/OSPF, ACLs, show-output troubleshooting |
| ⚡ [Rapid Prototyper](engineering/hive-rapid-prototyper.md) | Fast POC development, MVPs | Quick proof-of-concepts, hackathon projects, fast iteration |
| 💎 [Senior Developer](engineering/hive-senior-developer.md) | Laravel/Livewire, advanced patterns | Complex implementations, architecture decisions |
| 🔧 [Filament Optimization Specialist](engineering/hive-filament-optimization-specialist.md) | Filament PHP admin UX, structural form redesign, resource optimization | Restructuring Filament resources/forms/tables for faster, cleaner admin workflows |
| ⚡ [Autonomous Optimization Architect](engineering/hive-autonomous-optimization-architect.md) | LLM routing, cost optimization, shadow testing | Autonomous systems needing intelligent API selection and cost guardrails |
| 🔩 [Embedded Firmware Engineer](engineering/hive-embedded-firmware-engineer.md) | Bare-metal, RTOS, ESP32/STM32/Nordic firmware | Production-grade embedded systems and IoT devices |
| 🚨 [Incident Response Commander](engineering/hive-incident-response-commander.md) | Incident management, post-mortems, on-call | Managing production incidents and building incident readiness |
| ⛓️ [Solidity Smart Contract Engineer](engineering/hive-solidity-smart-contract-engineer.md) | EVM contracts, gas optimization, DeFi | Secure, gas-optimized smart contracts and DeFi protocols |
| 🧭 [Codebase Onboarding Engineer](engineering/hive-codebase-onboarding-engineer.md) | Fast developer onboarding, read-only codebase exploration, factual explanation | Helping new developers understand unfamiliar repos quickly by reading the code, tracing code paths, and stating facts about structure and behavior |
| 📚 [Technical Writer](engineering/hive-technical-writer.md) | Developer docs, API reference, tutorials | Clear, accurate technical documentation |
| 💬 [WeChat Mini Program Developer](engineering/hive-wechat-mini-program-developer.md) | WeChat ecosystem, Mini Programs, payment integration | Building performant apps for the WeChat ecosystem |
| 👁️ [Code Reviewer](engineering/hive-code-reviewer.md) | Constructive code review, security, maintainability | PR reviews, code quality gates, mentoring through review |
| 🗄️ [Database Optimizer](engineering/hive-database-optimizer.md) | Schema design, query optimization, indexing strategies | PostgreSQL/MySQL tuning, slow query debugging, migration planning |
| 🌿 [Git Workflow Master](engineering/hive-git-workflow-master.md) | Branching strategies, conventional commits, advanced Git | Git workflow design, history cleanup, CI-friendly branch management |
| 🏛️ [Software Architect](engineering/hive-software-architect.md) | System design, DDD, architectural patterns, trade-off analysis | Architecture decisions, domain modeling, system evolution strategy |
| 🛡️ [SRE](engineering/hive-sre.md) | SLOs, error budgets, observability, chaos engineering | Production reliability, toil reduction, capacity planning |
| 🧬 [AI Data Remediation Engineer](engineering/hive-ai-data-remediation-engineer.md) | Self-healing pipelines, air-gapped SLMs, semantic clustering | Fixing broken data at scale with zero data loss |
| 🔧 [Data Engineer](engineering/hive-data-engineer.md) | Data pipelines, lakehouse architecture, ETL/ELT | Building reliable data infrastructure and warehousing |
| 🔗 [Feishu Integration Developer](engineering/hive-feishu-integration-developer.md) | Feishu/Lark Open Platform, bots, workflows | Building integrations for the Feishu ecosystem |
| 🧱 [CMS Developer](engineering/hive-cms-developer.md) | WordPress & Drupal themes, plugins/modules, content architecture | Code-first CMS implementation and customization |
| 📧 [Email Intelligence Engineer](engineering/hive-email-intelligence-engineer.md) | Email parsing, MIME extraction, structured data for AI agents | Turning raw email threads into reasoning-ready context |
| 🎙️ [Voice AI Integration Engineer](engineering/hive-voice-ai-integration-engineer.md) | Speech-to-text pipelines, Whisper, ASR, speaker diarization | End-to-end transcription pipelines, audio preprocessing, structured transcript delivery |
| 🖧 [IT Service Manager](engineering/hive-it-service-manager.md) | ITIL 4 service management | Incident/problem/change management, SLAs, CMDB |
| 🪡 [Minimal Change Engineer](engineering/hive-minimal-change-engineer.md) | Minimum-viable diffs | Fixing only what's asked, no scope creep |
| 📜 [OrgScript Engineer](engineering/hive-orgscript-engineer.md) | OrgScript grammar & AST validation | Designing/parsing OrgScript business-logic definitions |
| 🧬 [Prompt Engineer](engineering/hive-prompt-engineer.md) | LLM prompt design & optimization | Turning vague instructions into reliable AI behaviors |
| 🕸️ [Multi-Agent Systems Architect](engineering/hive-multi-agent-systems-architect.md) | Multi-agent pipeline design & governance | Topology, context, trust, failure recovery for agent systems |
| 🛒 [Drupal Shopping Cart Engineer](engineering/hive-drupal-shopping-cart.md) | Drupal Commerce storefronts | Catalog, payments, checkout, orders on Drupal 10/11 |
| 🛍️ [WordPress Shopping Cart Engineer](engineering/hive-wordpress-shopping-cart.md) | WooCommerce storefronts | Catalog, payments, checkout, conversion on WordPress |
| 💳 [Payments & Billing Engineer](engineering/hive-payments-billing-engineer.md) | PSP integration, idempotent payment flows, subscription billing | Stripe/Adyen/Braintree integrations, webhook processing, dunning, reconciliation |
| 🌍 [Internationalization Engineer](engineering/hive-i18n-engineer.md) | ICU MessageFormat, RTL/bidi layouts, CLDR formatting, pseudo-localization | Making apps translation-ready, locale-aware formatting, RTL support, i18n audits |
| ⚡ [Drupal Performance Engineer](engineering/hive-drupal-performance.md) | Drupal performance & Core Web Vitals | Caching, DB/query tuning, render pipeline, profiling high-traffic Drupal |
| ⚡ [WordPress Performance Engineer](engineering/hive-wordpress-performance.md) | WordPress performance & Core Web Vitals | Caching, query/asset optimization, plugin tuning, profiling high-traffic WP |
| ♿ [Section 508 Accessibility Specialist](engineering/hive-section-508-specialist.md) | US federal 508 / WCAG accessibility | ARIA, screen-reader testing, VPAT/ACR authoring, remediation |
| 🏛️ [USWDS Developer](engineering/hive-uswds-developer.md) | US Web Design System (federal) | Accessible gov UI components & design-system patterns |
| 🔎 [Search Relevance Engineer](engineering/hive-search-relevance-engineer.md) | Search ranking & relevance | Query understanding, embeddings, ranking/eval, relevance tuning |
| 🔐 [Identity & Access Engineer](engineering/hive-identity-access-engineer.md) | AuthN/AuthZ & IAM | OAuth/OIDC/SAML, SSO, RBAC/ABAC, token & session security |
| 🤝 [Realtime Collaboration Engineer](engineering/hive-realtime-collaboration-engineer.md) | Realtime sync & presence | CRDTs/OT, conflict resolution, live cursors, offline sync |
| 💻 [Desktop App Engineer](engineering/hive-desktop-app-engineer.md) | Cross-platform desktop apps | Electron/Tauri, native integration, packaging, auto-update |
| 🚀 [Mobile Release Engineer](engineering/hive-mobile-release-engineer.md) | Mobile release & CI/CD | App Store/Play submission, signing, staged rollout, crash triage |
| 🎬 [Video Streaming Engineer](engineering/hive-video-streaming-engineer.md) | Video streaming & transcoding | HLS/DASH, ABR, codecs, CDN delivery, low-latency streaming |
| 💰 [FinOps Engineer](engineering/hive-finops-engineer.md) | Cloud cost engineering | Cost allocation, rightsizing, unit economics, budget & anomaly control |
| 🧩 [WebAssembly Engineer](engineering/hive-webassembly-engineer.md) | WebAssembly & WASI | Rust/C++→WASM, sandboxing, host bindings, performance |
| 🔌 [API Platform Engineer](engineering/hive-api-platform-engineer.md) | API gateways & platforms | Gateway design, versioning, rate limiting, developer portals |
| 🛟 [Database Reliability Engineer](engineering/hive-database-reliability-engineer.md) | Database reliability (DBRE) | HA/replication, automated failover, PITR backups, zero-downtime ops |
| 🛠️ [Developer Tooling Engineer](engineering/hive-developer-tooling-engineer.md) | CLI & developer tooling | Command-line tools, internal DX, build/dev workflows |
| 📡 [IoT Fleet Engineer](engineering/hive-iot-fleet-engineer.md) | IoT & edge fleet | Device provisioning/identity, MQTT telemetry, OTA updates |
| 🔍 [RAG Pipeline Engineer](engineering/hive-rag-pipeline-engineer.md) | Production RAG pipelines | Chunking, retrieval quality, hybrid search, re-ranking, eval-driven iteration |
| 🗄️ [GaussDB Expert Engineer](engineering/hive-gaussdb-expert.md) | Huawei GaussDB OLTP | Enterprise OLTP performance, HA, and migration on Huawei's GaussDB |
| 🕵️ [Privacy Engineer](engineering/hive-privacy-engineer.md) | PII discovery, data minimization, consent enforcement, DSAR/deletion pipelines | Implementing privacy in code, right-to-be-forgotten across services, retention automation |
| 🦀 [Rust Refactoring Specialist](engineering/hive-rust-refactoring-specialist.md) | Behavior-aware Rust refactoring | Reforming crates/traits/modules with evidence-based, behavior-preserving changes |
| 🧪 [LLM Post-Training Engineer](engineering/hive-llm-post-training-engineer.md) | Post-training stack (SFT/DPO/GRPO/RLVR) | Evidence-based experiment gating, checkpoint integrity, failure classification |
| 📈 [Data Visualization Engineer](engineering/hive-data-visualization-engineer.md) | Perceptually honest data viz | Chart-type selection, colorblind-safe palettes, performant D3/Vega rendering |
| 🧠 [Knowledge Graph Engineer](engineering/hive-knowledge-graph-engineer.md) | Knowledge graphs, entity-relationship extraction, graph-enhanced RAG | Structuring documents into queryable Neo4j graphs with LangGraph; provenance, contradiction tracking, subgraph retrieval |
| 🌏 [China Network Engineer](engineering/hive-china-network-engineer.md) | Huawei VRP, H3C Comware, Ruijie RGOS, Hillstone StoneOS | Routing/switching/firewall design, NAT, MLPS 2.0 compliant borders, change windows with rollback plans |
| 🛤️ [Platform Engineer](engineering/hive-platform-engineer.md) | Internal developer platforms, golden paths, IDPs, self-serve infrastructure | Paved-road scaffolding, developer experience measurement, platform-as-a-product roadmaps |
| 📑 [PDF Engine Architect](engineering/hive-pdf-engine-architect.md) | Deterministic HTML-to-PDF compilation, tagged PDF/UA and PDF/A | Playwright render pools, dynamic page sizing, archival-grade document output |
| 🎯 [ATS Validator Architect](engineering/hive-ats-validator-architect.md) | Resume parseability, ATS ingestion pipelines | BM25/TF-IDF relevance scoring, layout linearization audits, EU AI Act and NYC LL144 compliance |
| 📑 [Universal Document Compiler](engineering/hive-universal-document-compiler.md) | Schema-agnostic document ASTs, data-shape layout inference, paged publishing | Compiling arbitrary YAML trees into proposals, technical specs, executive dossiers |
| 🛠️ [ServiceNow Developer & Mentor](engineering/hive-servicenow-developer-mentor.md) | Business Rules, Script Includes, GlideAjax, ACLs, Flow Designer | ServiceNow development and step-by-step instance troubleshooting |
| ⚡ [Electrical Engineer](engineering/hive-electrical-engineer.md) | Telecom DC power, cables, batteries, generators, earthing, lightning protection | Site power assessments, BOQ and drawing review, electrical validation rules for engineering platforms |

### 🎨 Design Division

Making it beautiful, usable, and delightful.

| Agent | Specialty | When to Use |
|-------|-----------|-------------|
| 🎯 [UI Designer](design/hive-ui-designer.md) | Visual design, component libraries, design systems | Interface creation, brand consistency, component design |
| 🔍 [UX Researcher](design/hive-ux-researcher.md) | User testing, behavior analysis, research | Understanding users, usability testing, design insights |
| 🏛️ [UX Architect](design/hive-ux-architect.md) | Technical architecture, CSS systems, implementation | Developer-friendly foundations, implementation guidance |
| 🎭 [Brand Guardian](design/hive-brand-guardian.md) | Brand identity, consistency, positioning | Brand strategy, identity development, guidelines |
| 📖 [Visual Storyteller](design/hive-visual-storyteller.md) | Visual narratives, multimedia content | Compelling visual stories, brand storytelling |
| ✨ [Whimsy Injector](design/hive-whimsy-injector.md) | Personality, delight, playful interactions | Adding joy, micro-interactions, Easter eggs, brand personality |
| 📷 [Image Prompt Engineer](design/hive-image-prompt-engineer.md) | AI image generation prompts, photography | Photography prompts for Midjourney, DALL-E, Stable Diffusion |
| 🌈 [Inclusive Visuals Specialist](design/hive-inclusive-visuals-specialist.md) | Representation, bias mitigation, authentic imagery | Generating culturally accurate AI images and video |
| 🎭 [Persona Walkthrough Specialist](design/hive-persona-walkthrough.md) | Persona-driven cognitive walkthroughs | Simulating user reactions and friction at each scroll position |
| 🧱 [UI Finish-Gate Reviewer](design/hive-ui-finish-gate-reviewer.md) | Anti-generic UI finish gate | Catching interchangeable UI before ship via evidence + a written design contract |

### 💰 Paid Media Division

Turning ad spend into measurable business outcomes.

| Agent | Specialty | When to Use |
| --- | --- | --- |
| 💰 [PPC Campaign Strategist](paid-media/hive-ppc-strategist.md) | Google/Microsoft/Amazon Ads, account architecture, bidding | Account buildouts, budget allocation, scaling, performance diagnosis |
| 🔍 [Search Query Analyst](paid-media/hive-search-query-analyst.md) | Search term analysis, negative keywords, intent mapping | Query audits, wasted spend elimination, keyword discovery |
| 📋 [Paid Media Auditor](paid-media/hive-auditor.md) | 200+ point account audits, competitive analysis | Account takeovers, quarterly reviews, competitive pitches |
| 📡 [Tracking & Measurement Specialist](paid-media/hive-tracking-specialist.md) | GTM, GA4, conversion tracking, CAPI | New implementations, tracking audits, platform migrations |
| ✍️ [Ad Creative Strategist](paid-media/hive-creative-strategist.md) | RSA copy, Meta creative, Performance Max assets | Creative launches, testing programs, ad fatigue refreshes |
| 📺 [Programmatic & Display Buyer](paid-media/hive-programmatic-buyer.md) | GDN, DSPs, partner media, ABM display | Display planning, partner outreach, ABM programs |
| 📱 [Paid Social Strategist](paid-media/hive-paid-social-strategist.md) | Meta, LinkedIn, TikTok, cross-platform social | Social ad programs, platform selection, audience strategy |

### 💼 Sales Division

Turning pipeline into revenue through craft, not CRM busywork.

| Agent | Specialty | When to Use |
|-------|-----------|-------------|
| 🎯 [Outbound Strategist](sales/hive-outbound-strategist.md) | Signal-based prospecting, multi-channel sequences, ICP targeting | Building pipeline through research-driven outreach, not volume |
| 🔍 [Discovery Coach](sales/hive-discovery-coach.md) | SPIN, Gap Selling, Sandler — question design and call structure | Preparing for discovery calls, qualifying opportunities, coaching reps |
| ♟️ [Deal Strategist](sales/hive-deal-strategist.md) | MEDDPICC qualification, competitive positioning, win planning | Scoring deals, exposing pipeline risk, building win strategies |
| 🛠️ [Sales Engineer](sales/hive-engineer.md) | Technical demos, POC scoping, competitive battlecards | Pre-sales technical wins, demo prep, competitive positioning |
| 🏹 [Proposal Strategist](sales/hive-proposal-strategist.md) | RFP response, win themes, narrative structure | Writing proposals that persuade, not just comply |
| 📊 [Pipeline Analyst](sales/hive-pipeline-analyst.md) | Forecasting, pipeline health, deal velocity, RevOps | Pipeline reviews, forecast accuracy, revenue operations |
| 🗺️ [Account Strategist](sales/hive-account-strategist.md) | Land-and-expand, QBRs, stakeholder mapping | Post-sale expansion, account planning, NRR growth |
| 🏋️ [Sales Coach](sales/hive-coach.md) | Rep development, call coaching, pipeline review facilitation | Making every rep and every deal better through structured coaching |
| 🎯 [Sales Outreach](specialized/hive-sales-outreach.md) | Cold prospecting, multi-touch cadences, objection handling, proposals | Top-of-funnel B2B outreach — from cold email to booked discovery call |
| 🧲 [Offer & Lead Gen Strategist](sales/hive-offer-lead-gen-strategist.md) | Offers & lead magnets | Top-of-funnel offer construction and lead gen |

### 📢 Marketing Division

Growing your audience, one authentic interaction at a time.

| Agent | Specialty | When to Use |
|-------|-----------|-------------|
| 🚀 [Growth Hacker](marketing/hive-growth-hacker.md) | Rapid user acquisition, viral loops, experiments | Explosive growth, user acquisition, conversion optimization |
| 📝 [Content Creator](marketing/hive-content-creator.md) | Multi-platform content, editorial calendars | Content strategy, copywriting, brand storytelling |
| 🐦 [Twitter Engager](marketing/hive-twitter-engager.md) | Real-time engagement, thought leadership | Twitter strategy, LinkedIn campaigns, professional social |
| 🛰️ [X/Twitter Intelligence Analyst](marketing/hive-x-twitter-intelligence-analyst.md) | Social listening, trend detection, account monitoring | Brand risk, competitor, and audience intelligence on X/Twitter |
| 📱 [TikTok Strategist](marketing/hive-tiktok-strategist.md) | Viral content, algorithm optimization | TikTok growth, viral content, Gen Z/Millennial audience |
| 📸 [Instagram Curator](marketing/hive-instagram-curator.md) | Visual storytelling, community building | Instagram strategy, aesthetic development, visual content |
| 🤝 [Reddit Community Builder](marketing/hive-reddit-community-builder.md) | Authentic engagement, value-driven content | Reddit strategy, community trust, authentic marketing |
| 🌱 [Developer Community Builder](marketing/hive-developer-community-builder.md) | Discord/forum architecture, contributor programs, community health | Building developer communities that members actually value |
| 📱 [App Store Optimizer](marketing/hive-app-store-optimizer.md) | ASO, conversion optimization, discoverability | App marketing, store optimization, app growth |
| 🌐 [Social Media Strategist](marketing/hive-social-media-strategist.md) | Cross-platform strategy, campaigns | Overall social strategy, multi-platform campaigns |
| 📕 [Xiaohongshu Specialist](marketing/hive-xiaohongshu-specialist.md) | Lifestyle content, trend-driven strategy | Xiaohongshu growth, aesthetic storytelling, Gen Z audience |
| 💬 [WeChat Official Account Manager](marketing/hive-wechat-official-account.md) | Subscriber engagement, content marketing | WeChat OA strategy, community building, conversion optimization |
| 🧠 [Zhihu Strategist](marketing/hive-zhihu-strategist.md) | Thought leadership, knowledge-driven engagement | Zhihu authority building, Q&A strategy, lead generation |
| 🇨🇳 [Baidu SEO Specialist](marketing/hive-baidu-seo-specialist.md) | Baidu optimization, China SEO, ICP compliance | Ranking in Baidu and reaching China's search market |
| 🎬 [Bilibili Content Strategist](marketing/hive-bilibili-content-strategist.md) | B站 algorithm, danmaku culture, UP主 growth | Building audiences on Bilibili with community-first content |
| 🎠 [Carousel Growth Engine](marketing/hive-carousel-growth-engine.md) | TikTok/Instagram carousels, autonomous publishing | Generating and publishing viral carousel content |
| 💼 [LinkedIn Content Creator](marketing/hive-linkedin-content-creator.md) | Personal branding, thought leadership, professional content | LinkedIn growth, professional audience building, B2B content |
| 🛒 [China E-Commerce Operator](marketing/hive-china-ecommerce-operator.md) | Taobao, Tmall, Pinduoduo, live commerce | Running multi-platform e-commerce in China |
| 🎥 [Kuaishou Strategist](marketing/hive-kuaishou-strategist.md) | Kuaishou, 老铁 community, grassroots growth | Building authentic audiences in lower-tier markets |
| 🔍 [SEO Specialist](marketing/hive-seo-specialist.md) | Technical SEO, content strategy, link building | Driving sustainable organic search growth |
| 📘 [Book Co-Author](marketing/hive-book-co-author.md) | Thought-leadership books, ghostwriting, publishing | Strategic book collaboration for founders and experts |
| 🌏 [Cross-Border E-Commerce Specialist](marketing/hive-cross-border-ecommerce.md) | Amazon, Shopee, Lazada, cross-border fulfillment | Full-funnel cross-border e-commerce strategy |
| 🎵 [Douyin Strategist](marketing/hive-douyin-strategist.md) | Douyin platform, short-video marketing, algorithm | Growing audiences on China's leading short-video platform |
| 🎙️ [Livestream Commerce Coach](marketing/hive-livestream-commerce-coach.md) | Host training, live room optimization, conversion | Building high-performing livestream e-commerce operations |
| 🎧 [Podcast Strategist](marketing/hive-podcast-strategist.md) | Podcast content strategy, platform optimization | Chinese podcast market strategy and operations |
| 🔒 [Private Domain Operator](marketing/hive-private-domain-operator.md) | WeCom, private traffic, community operations | Building enterprise WeChat private domain ecosystems |
| 🎬 [Short-Video Editing Coach](marketing/hive-short-video-editing-coach.md) | Post-production, editing workflows, platform specs | Hands-on short-video editing training and optimization |
| 🔥 [Weibo Strategist](marketing/hive-weibo-strategist.md) | Sina Weibo, trending topics, fan engagement | Full-spectrum Weibo operations and growth |
| 🎙️ [Global Podcast Strategist](marketing/hive-global-podcast-strategist.md) | Show positioning, audience growth, monetisation | Podcast launch, platform algorithms, sponsorship, community building |
| 🔮 [AI Citation Strategist](marketing/hive-ai-citation-strategist.md) | AEO/GEO, AI recommendation visibility, citation auditing | Improving brand visibility across ChatGPT, Claude, Gemini, Perplexity |
| 🇨🇳 [China Market Localization Strategist](marketing/hive-china-market-localization-strategist.md) | Full-stack China market localization, Douyin/Xiaohongshu/WeChat GTM | Turning trend signals into executable China go-to-market strategies |
| 🎬 [Video Optimization Specialist](marketing/hive-video-optimization-specialist.md) | YouTube algorithm strategy, chaptering, thumbnail concepts | YouTube channel growth, video SEO, audience retention optimization |
| 🏗️ [AEO Foundations Architect](marketing/hive-aeo-foundations.md) | AI Engine Optimization infrastructure | llms.txt, AI-aware robots.txt, agent discovery files |
| 🤖 [Agentic Search Optimizer](marketing/hive-agentic-search-optimizer.md) | WebMCP & agentic task completion | Making sites usable by AI browsing agents |
| 📧 [Email Marketing Strategist](marketing/hive-email-strategist.md) | Lifecycle email & deliverability | CRM campaigns, automation, segmentation |
| 📡 [Multi-Platform Publisher](marketing/hive-multi-platform-publisher.md) | One-click Chinese multi-platform publishing | Routing one article to 知乎/小红书/CSDN/B站/公众号/掘金 |
| 📣 [PR & Communications Manager](marketing/hive-pr-communications-manager.md) | PR, media relations & crisis comms | Press releases, thought leadership, reputation |

### 📊 Product Division

Building the right thing at the right time.

| Agent | Specialty | When to Use |
|-------|-----------|-------------|
| 🎯 [Sprint Prioritizer](product/hive-sprint-prioritizer.md) | Agile planning, feature prioritization | Sprint planning, resource allocation, backlog management |
| 🔍 [Trend Researcher](product/hive-trend-researcher.md) | Market intelligence, competitive analysis | Market research, opportunity assessment, trend identification |
| 💬 [Feedback Synthesizer](product/hive-feedback-synthesizer.md) | User feedback analysis, insights extraction | Feedback analysis, user insights, product priorities |
| 🔬 [DX Engineer](product/hive-dx-engineer.md) | Onboarding friction, SDK ergonomics, error messages | Cutting a developer's time to first success |
| 🧠 [Behavioral Nudge Engine](product/hive-behavioral-nudge-engine.md) | Behavioral psychology, nudge design, engagement | Maximizing user motivation through behavioral science |
| 🧭 [Product Manager](product/hive-manager.md) | Full lifecycle product ownership | Discovery, PRDs, roadmap planning, GTM, outcome measurement |

### 🎬 Project Management Division

Keeping the trains running on time (and under budget).

| Agent | Specialty | When to Use |
|-------|-----------|-------------|
| 🎬 [Studio Producer](project-management/hive-studio-producer.md) | High-level orchestration, portfolio management | Multi-project oversight, strategic alignment, resource allocation |
| 🐑 [Project Shepherd](project-management/hive-project-shepherd.md) | Cross-functional coordination, timeline management | End-to-end project coordination, stakeholder management |
| ⚙️ [Studio Operations](project-management/hive-studio-operations.md) | Day-to-day efficiency, process optimization | Operational excellence, team support, productivity |
| 🧪 [Experiment Tracker](project-management/hive-experiment-tracker.md) | A/B tests, hypothesis validation | Experiment management, data-driven decisions, testing |
| 👔 [Senior Project Manager](project-management/hive-project-manager-senior.md) | Realistic scoping, task conversion | Converting specs to tasks, scope management |
| 📋 [Jira Workflow Steward](project-management/hive-jira-workflow-steward.md) | Git workflow, branch strategy, traceability | Enforcing Jira-linked Git discipline and delivery |
| 📋 [Meeting Notes Specialist](project-management/hive-meeting-notes-specialist.md) | Structured meeting summaries | Extracting decisions, action items, open questions |

### 🧪 Testing Division

Breaking things so users don't have to.

| Agent | Specialty | When to Use |
|-------|-----------|-------------|
| 📸 [Evidence Collector](testing/hive-evidence-collector.md) | Screenshot-based QA, visual proof | UI testing, visual verification, bug documentation |
| 🔍 [Reality Checker](testing/hive-reality-checker.md) | Evidence-based certification, quality gates | Production readiness, quality approval, release certification |
| 📊 [Test Results Analyzer](testing/hive-test-results-analyzer.md) | Test evaluation, metrics analysis | Test output analysis, quality insights, coverage reporting |
| ⚡ [Performance Benchmarker](testing/hive-performance-benchmarker.md) | Performance testing, optimization | Speed testing, load testing, performance tuning |
| 🔌 [API Tester](testing/hive-api-tester.md) | API validation, integration testing | API testing, endpoint verification, integration QA |
| 🛠️ [Tool Evaluator](testing/hive-tool-evaluator.md) | Technology assessment, tool selection | Evaluating tools, software recommendations, tech decisions |
| 🔄 [Workflow Optimizer](testing/hive-workflow-optimizer.md) | Process analysis, workflow improvement | Process optimization, efficiency gains, automation opportunities |
| ♿ [Accessibility Auditor](testing/hive-accessibility-auditor.md) | WCAG auditing, assistive technology testing | Accessibility compliance, screen reader testing, inclusive design verification |
| 🎭 [Test Automation Engineer](testing/hive-test-automation-engineer.md) | Playwright/Cypress E2E, flake elimination, CI parallelization | Browser test suites, deterministic pipelines, trace-driven failure debugging |

### 🔒 Security Division

Defending the stack — from secure-by-design architecture to breach response.

| Agent | Specialty | When to Use |
|-------|-----------|-------------|
| 🛡️ [Security Architect](security/hive-architect.md) | Threat modeling, secure-by-design, trust boundaries | System security models, architecture reviews, defense-in-depth |
| 🔐 [Application Security Engineer](security/hive-appsec-engineer.md) | SDLC security, SAST/DAST, secure code review | Securing the dev lifecycle, code-level vulnerabilities |
| 🗡️ [Penetration Tester](security/hive-penetration-tester.md) | Authorized pentests, red team ops, exploitation | Finding exploitable weaknesses before attackers do |
| ☁️ [Cloud Security Architect](security/hive-cloud-security-architect.md) | Zero trust, cloud-native defense-in-depth | Securing cloud infrastructure and architectures |
| 🚨 [Incident Responder](security/hive-incident-responder.md) | DFIR, breach investigation, threat containment | Active breaches, forensics, crisis response |
| 🔍 [Threat Intelligence Analyst](security/hive-threat-intelligence-analyst.md) | Adversary tracking, campaign mapping, ATT&CK | Understanding who's attacking and how |
| 🎯 [Threat Detection Engineer](security/hive-threat-detection-engineer.md) | SIEM rules, threat hunting, ATT&CK mapping | Building detection layers and threat hunting |
| 🛡️ [Senior SecOps Engineer](security/hive-senior-secops.md) | Secrets scanning, secure-by-default submissions | Defensive code-level security on every change |
| 📋 [Compliance Auditor](security/hive-compliance-auditor.md) | SOC 2, ISO 27001, HIPAA, PCI-DSS | Guiding organizations through compliance certification |
| 🛡️ [Blockchain Security Auditor](security/hive-blockchain-security-auditor.md) | Smart contract audits, exploit analysis | Finding vulnerabilities in contracts before deployment |
| 🔎 [AI-Generated Code Security Auditor](security/hive-ai-generated-code-auditor.md) | Security review of AI/vibe-coded apps | Hardcoded secrets, broken RLS, prompt-injection sinks |
| 🔑 [Secrets & Credential Hygiene Engineer](security/hive-secrets-credential-engineer.md) | Secrets & credential lifecycle | Detection, vaulting, rotation, leak response |
| 🧭 [Security Audit Orchestrator](security/hive-audit-orchestrator.md) | Multi-phase vulnerability discovery, coverage ledgers | Full-scope audits, coverage-driven testing, findings schema verification |
| ⚖️ [Adversarial Security Verifier](security/hive-adversarial-verifier.md) | Vulnerability refutation, proof-of-concept testing | Disproving false positives, validating candidates, invariant verification |
| 🧩 [Memory Safety & Binary Auditor](security/hive-memory-safety-auditor.md) | Native code, Rust unsafe, FFI, binary memory corruption | Buffer overflows, UAF, integer truncation, sanitizer test harnesses |
| 🌐 [Web Protocol & Auth Auditor](security/hive-web-protocol-auth-auditor.md) | HTTP framing, request smuggling, cache poisoning, SSRF, OAuth | Reverse proxy desyncs, cache deception, token and federated auth audits |
| 📦 [Supply Chain & Release Auditor](security/hive-supply-chain-auditor.md) | Dependency provenance, CI/CD injection, release integrity | Typosquatting, lockfile tampering, malicious build scripts, workflow security |
| 🗄️ [Data Isolation & Tenant Auditor](security/hive-data-isolation-auditor.md) | Multi-tenant isolation, RLS, cross-tenant leaks | SaaS boundary audits, shared cache partitioning, tenant data lifecycles |
| ⚡ [Protocol & RPC Security Auditor](security/hive-rpc-messaging-auditor.md) | gRPC, Protobuf, WebSockets, serialization security | Insecure deserialization, binary framing desyncs, webhook HMAC verification |
| 🖥️ [Client-Side & Browser Security Auditor](security/hive-client-side-auditor.md) | DOM XSS, prototype pollution, postMessage security | Browser trust boundaries, iframe sandboxing, client storage audits |
| 📱 [Desktop, Mobile & IPC Security Auditor](security/hive-desktop-mobile-ipc-auditor.md) | Local IPC, custom URL schemes, Electron/Tauri, webviews | Native app auditing, Android/iOS IPC, local daemon privilege boundaries |
| 🛑 [Resource Exhaustion & Availability Auditor](security/hive-resource-exhaustion-auditor.md) | ReDoS, algorithmic complexity, billing bombs (EDoS) | Asymmetric DoS, unbounded memory growth, third-party API spend containment |

### 🛟 Support Division

The backbone of the operation.

| Agent | Specialty | When to Use |
|-------|-----------|-------------|
| 💬 [Support Responder](support/hive-support-responder.md) | Customer service, issue resolution | Customer support, user experience, support operations |
| 📊 [Analytics Reporter](support/hive-analytics-reporter.md) | Data analysis, dashboards, insights | Business intelligence, KPI tracking, data visualization |
| 💰 [Finance Tracker](support/hive-finance-tracker.md) | Financial planning, budget management | Financial analysis, cash flow, business performance |
| 🏗️ [Infrastructure Maintainer](support/hive-infrastructure-maintainer.md) | System reliability, performance optimization | Infrastructure management, system operations, monitoring |
| ⚖️ [Legal Compliance Checker](support/hive-legal-compliance-checker.md) | Compliance, regulations, legal review | Legal compliance, regulatory requirements, risk management |
| 📑 [Executive Summary Generator](support/hive-executive-summary-generator.md) | C-suite communication, strategic summaries | Executive reporting, strategic communication, decision support |

### 🥽 Spatial Computing Division

Building the immersive future.

| Agent | Specialty | When to Use |
|-------|-----------|-------------|
| 🏗️ [XR Interface Architect](spatial-computing/hive-xr-interface-architect.md) | Spatial interaction design, immersive UX | AR/VR/XR interface design, spatial computing UX |
| 💻 [macOS Spatial/Metal Engineer](spatial-computing/hive-macos-spatial-metal-engineer.md) | Swift, Metal, high-performance 3D | macOS spatial computing, Vision Pro native apps |
| 🌐 [XR Immersive Developer](spatial-computing/hive-xr-immersive-developer.md) | WebXR, browser-based AR/VR | Browser-based immersive experiences, WebXR apps |
| 🎮 [XR Cockpit Interaction Specialist](spatial-computing/hive-xr-cockpit-interaction-specialist.md) | Cockpit-based controls, immersive systems | Cockpit control systems, immersive control interfaces |
| 🍎 [visionOS Spatial Engineer](spatial-computing/hive-visionos-spatial-engineer.md) | Apple Vision Pro development | Vision Pro apps, spatial computing experiences |
| 🔌 [Terminal Integration Specialist](spatial-computing/hive-terminal-integration-specialist.md) | Terminal integration, command-line tools | CLI tools, terminal workflows, developer tools |

### 🎯 Specialized Division

The unique specialists who don't fit in a box.

| Agent | Specialty | When to Use |
|-------|-----------|-------------|
| 🦉 [Ruthless Strategic Advisor](specialized/hive-advisor.md) | Architectural critique, assumption stress-testing, anti-sycophancy | Reviewing complex decisions, eliminating blind spots, and validating architectural trade-offs |
| 🌐 [Swarm Reality Simulator](specialized/hive-swarm-reality-simulator.md) | Multi-agent prediction, OASIS swarm simulation, hypothesis stress-testing | Simulating emergent stakeholder reactions, testing product ideas, and discovering unpredicted failure modes |
| 🎭 [Agents Orchestrator](specialized/hive-agents-orchestrator.md) | Multi-agent coordination, workflow management | Complex projects requiring multiple agent coordination |
| 🔍 [LSP/Index Engineer](specialized/hive-lsp-index-engineer.md) | Language Server Protocol, code intelligence | Code intelligence systems, LSP implementation, semantic indexing |
| 📥 [Sales Data Extraction Agent](specialized/hive-sales-data-extraction-agent.md) | Excel monitoring, sales metric extraction | Sales data ingestion, MTD/YTD/Year End metrics |
| 📈 [Data Consolidation Agent](specialized/hive-data-consolidation-agent.md) | Sales data aggregation, dashboard reports | Territory summaries, rep performance, pipeline snapshots |
| 📬 [Report Distribution Agent](specialized/hive-report-distribution-agent.md) | Automated report delivery | Territory-based report distribution, scheduled sends |
| 🔐 [Agentic Identity & Trust Architect](specialized/hive-agentic-identity-trust.md) | Agent identity, authentication, trust verification | Multi-agent identity systems, agent authorization, audit trails |
| 🔗 [Identity Graph Operator](specialized/hive-identity-graph-operator.md) | Shared identity resolution for multi-agent systems | Entity deduplication, merge proposals, cross-agent identity consistency |
| 💸 [Accounts Payable Agent](specialized/hive-accounts-payable-agent.md) | Payment processing, vendor management, audit | Autonomous payment execution across crypto, fiat, stablecoins |
| 🌍 [Cultural Intelligence Strategist](specialized/hive-cultural-intelligence-strategist.md) | Global UX, representation, cultural exclusion | Ensuring software resonates across cultures |
| 🗣️ [Developer Advocate](specialized/hive-developer-advocate.md) | Community building, DX, developer content | Bridging product and developer community |
| 🔬 [Model QA Specialist](specialized/hive-model-qa.md) | ML audits, feature analysis, interpretability | End-to-end QA for machine learning models |
| 🗃️ [ZK Steward](specialized/hive-zk-steward.md) | Knowledge management, Zettelkasten, notes | Building connected, validated knowledge bases |
| 🔌 [MCP Builder](specialized/hive-mcp-builder.md) | Model Context Protocol servers, AI agent tooling | Building MCP servers that extend AI agent capabilities |
| 📄 [Document Generator](specialized/hive-document-generator.md) | PDF, PPTX, DOCX, XLSX generation from code | Professional document creation, reports, data visualization |
| ⚙️ [Automation Governance Architect](specialized/hive-automation-governance-architect.md) | Automation governance, n8n, workflow auditing | Evaluating and governing business automations at scale |
| 📚 [Corporate Training Designer](specialized/hive-corporate-training-designer.md) | Enterprise training, curriculum development | Designing training systems and learning programs |
| 🌱 [Personal Growth Mentor](specialized/hive-personal-growth-mentor.md) | Goal clarity, habit systems, accountability, life strategy | Cross-domain personal development without motivational fluff |
| 🏛️ [Government Digital Presales Consultant](specialized/hive-government-digital-presales-consultant.md) | China ToG presales, digital transformation | Government digital transformation proposals and bids |
| ⚕️ [Healthcare Marketing Compliance](specialized/hive-healthcare-marketing-compliance.md) | China healthcare advertising compliance | Healthcare marketing regulatory compliance |
| 🎯 [Recruitment Specialist](specialized/hive-recruitment-specialist.md) | Talent acquisition, recruiting operations | Recruitment strategy, sourcing, and hiring processes |
| 🎓 [Study Abroad Advisor](specialized/hive-study-abroad-advisor.md) | International education, application planning | Study abroad planning across US, UK, Canada, Australia |
| 🔗 [Supply Chain Strategist](specialized/hive-supply-chain-strategist.md) | Supply chain management, procurement strategy | Supply chain optimization and procurement planning |
| 🗺️ [Workflow Architect](specialized/hive-workflow-architect.md) | Workflow discovery, mapping, and specification | Mapping every path through a system before code is written |
| ☁️ [Salesforce Architect](specialized/hive-salesforce-architect.md) | Multi-cloud Salesforce design, governor limits, integrations | Enterprise Salesforce architecture, org strategy, deployment pipelines |
| 🇫🇷 [French Consulting Market Navigator](specialized/hive-french-consulting-market.md) | ESN/SI ecosystem, portage salarial, rate positioning | Freelance consulting in the French IT market |
| 🇰🇷 [Korean Business Navigator](specialized/hive-korean-business-navigator.md) | Korean business culture, 품의 process, relationship mechanics | Foreign professionals navigating Korean business relationships |
| 🏗️ [Civil Engineer](specialized/hive-civil-engineer.md) | Structural analysis, geotechnical design, global building codes | Multi-standard structural engineering across Eurocode, ACI, AISC, and more |
| 🎧 [Customer Service](specialized/hive-customer-service.md) | Omnichannel support, complaint handling, retention, escalation | Any industry customer support — retail, SaaS, hospitality, finance, logistics |
| 🏥 [Healthcare Customer Service](specialized/hive-healthcare-customer-service.md) | HIPAA-aware patient support, billing, insurance, emergency routing | Healthcare organizations needing compliant, empathetic patient support |
| 🏨 [Hospitality Guest Services](specialized/hive-hospitality-guest-services.md) | Reservations, concierge, complaint recovery, loyalty, events | Hotels, resorts, restaurants, and event venues |
| 🤝 [HR Onboarding](specialized/hive-hr-onboarding.md) | Pre-boarding, compliance, benefits enrollment, 30-60-90 day plans | Any company onboarding new hires — from startups to enterprise |
| 🌐 [Language Translator](specialized/hive-language-translator.md) | Spanish ↔ English translation, dialect awareness, cultural context | Travel, business, medical, and legal translation needs |
| ⏱️ [Legal Billing & Time Tracking](specialized/hive-legal-billing-time-tracking.md) | Time capture, billing narratives, IOLTA compliance, collections | Law firms maximizing revenue recovery and billing accuracy |
| 📋 [Legal Client Intake](specialized/hive-legal-client-intake.md) | Prospect qualification, conflict screening, consultation scheduling | Law firms converting inquiries into retained clients |
| ⚖️ [Legal Document Review](specialized/hive-legal-document-review.md) | Contract review, risk flagging, version comparison, compliance | Attorney-ready first-pass review across any practice area |
| 🏦 [Loan Officer Assistant](specialized/hive-loan-officer-assistant.md) | Borrower intake, TRID compliance, pipeline tracking, closing coordination | Mortgage and consumer lending teams |
| 🏠 [Real Estate Buyer & Seller](specialized/hive-real-estate-buyer-seller.md) | Buyer/seller representation, offers, transaction coordination | Residential and investment real estate transactions |
| 🛒 [Retail Customer Returns](specialized/hive-retail-customer-returns.md) | Return processing, fraud prevention, exchanges, vendor returns | Brick-and-mortar, e-commerce, and omnichannel retail |
| ♟️ [Business Strategist](specialized/hive-business-strategist.md) | Management-consulting strategy | Competitive analysis, market entry, growth planning |
| 🔄 [Change Management Consultant](specialized/hive-change-management-consultant.md) | ADKAR/Kotter/Prosci change | Guiding orgs through transformation & adoption |
| 🧭 [Chief of Staff](specialized/hive-chief-of-staff.md) | Executive coordination | Filtering noise, owning processes, routing decisions |
| 🌟 [Customer Success Manager](specialized/hive-customer-success-manager.md) | Onboarding, health & retention | QBRs, churn prevention, renewals & expansion |
| 📝 [Grant Writer](specialized/hive-grant-writer.md) | Grant proposals & funding | LOIs, proposals, budgets for nonprofits/research |
| 🏥 [Medical Billing & Coding Specialist](specialized/hive-medical-billing-coding-specialist.md) | ICD-10/CPT/HCPCS & revenue cycle | Claims, denial management, RCM optimization |
| 💰 [Pricing Analyst](specialized/hive-pricing-analyst.md) | Pricing models & margin optimization | Competitor/cost analysis, value-based pricing |
| 💼 [Chief Financial Officer](specialized/hive-chief-financial-officer.md) | Capital allocation & financial strategy | Treasury, FP&A, M&A finance, investor & board reporting |
| 🌱 [ESG & Sustainability Officer](specialized/hive-esg-sustainability-officer.md) | ESG programs & disclosure | Sustainability strategy, decarbonization, reporting |
| 🔐 [Data Privacy Officer](specialized/hive-data-privacy-officer.md) | GDPR/CCPA privacy compliance | Data mapping, DPIAs, consent, breach response |
| ⚙️ [Operations Manager](specialized/hive-operations-manager.md) | Lean/Six Sigma operations | Process mapping, capacity planning, KPI governance |
| 🤝 [M&A Integration Manager](specialized/hive-ma-integration-manager.md) | Post-merger integration | Day 1/100-day plans, synergy tracking, TSA management |
| 🧠 [Organizational Psychologist](specialized/hive-organizational-psychologist.md) | Team dynamics & culture health | Psychological safety, burnout risk, high-performing teams |
| ⚔️ [Strategy Duel Agent](specialized/hive-strategy-duel-agent.md) | Game theory & the 36 stratagems | Turn-based strategy duels, adversarial scenario simulation |
| 🛡️ [FedRAMP & RMF Compliance Engineer](specialized/hive-fedramp-rmf-compliance.md) | Federal cloud authorization (ATO) | NIST 800-53, FedRAMP Rev5/20x, SSP/POA&M, ConMon, OSCAL |
| 🏺 [Codebase Archaeologist](specialized/hive-codebase-archaeologist.md) | Multi-tool codebase drift audits | Detecting silent drift across Claude/Cursor/Copilot/Windsurf edits |
| 🧾 [Resume Tailor](specialized/hive-resume-tailor.md) | Candidate-side resume optimization | JD mapping, ATS keyword alignment, experience-to-requirement matching |
| 🧡 [Aging Parent Care Companion](specialized/hive-healthcare-aging-parent-care-companion.md) | Family caregiver decision-support | Appointment/medication coordination, care-team comms, caregiver wellbeing (HIPAA-aligned) |
| 🏛️ [Master Plan Architect](specialized/hive-master-plan-architect.md) | Architectural teaching, red-team plan critique | Deep architecture teaching, risk critique, comprehensive Markdown implementation plans (no code execution) |
| 🎧 [Focus Music Architect](specialized/hive-focus-music-architect.md) | Instrumental focus-music prompt engineering, neuroacoustics | Soundscape architecture, BPM curves, binaural layers for generative audio models |

### 💵 Finance Division

Accounting, financial analysis, tax strategy, and investment research specialists.

| Agent | Specialty | When to Use |
|-------|-----------|-------------|
| 📒 [Bookkeeper & Controller](finance/hive-bookkeeper-controller.md) | Month-end close, reconciliation, GAAP compliance, internal controls | Day-to-day accounting operations, audit readiness, financial record-keeping |
| 📊 [Financial Analyst](finance/hive-financial-analyst.md) | Financial modeling, forecasting, scenario analysis, decision support | Three-statement models, variance analysis, data-driven business intelligence |
| 📈 [FP&A Analyst](finance/hive-fpa-analyst.md) | Budgeting, rolling forecasts, variance analysis, business reviews | Annual operating plans, monthly business reviews, strategic resource allocation |
| 🔍 [Investment Researcher](finance/hive-investment-researcher.md) | Due diligence, portfolio analysis, asset valuation, equity research | Investment thesis development, risk assessment, market research |
| 🏛️ [Tax Strategist](finance/hive-tax-strategist.md) | Tax optimization, multi-jurisdictional compliance, transfer pricing | Entity structuring, ETR analysis, audit defense, strategic tax planning |

### 🎮 Game Development Division

Building worlds, systems, and experiences across every major engine.

#### Game Studio Orchestrator & Specialists (50+ Disciplines)

| Agent | Specialty | When to Use |
|-------|-----------|-------------|
| 🎯 [Game Studio Orchestrator](game-development/game-studio/hive-game-studio-orchestrator.md) | Full-lifecycle studio production pipeline orchestrator | Directing cross-discipline game development across 6 phases |
| 🎬 [Creative Director](game-development/game-studio/hive-game-studio-creative-director.md) | Highest creative authority, vision lock, tone, and design pillars | Establishing core game pillars and resolving department conflicts |
| 👑 [Technical Director](game-development/game-studio/hive-game-studio-technical-director.md) | Engine choices, architecture integrity, frame budget, and technical risks | Architecture oversight and cross-system engineering standards |
| 📋 [Producer](game-development/game-studio/hive-game-studio-producer.md) | Sprint planning, milestone tracking, scope discipline, and risk management | Keeping production sprints on time and eliminating feature creep |
| 🧪 [QA Lead](game-development/game-studio/hive-game-studio-qa-lead.md) | Test plans, regression suites, bug severity, and release quality gates | Enforcing evidence-backed QA and milestone sign-offs |
| 🕹️ *45+ More Studio Specialists* | Audio, art, narrative, devops, engine specialists, and UI | Explore the full suite in [`game-development/game-studio/`](game-development/game-studio/) |

#### Cross-Engine Agents (Engine-Agnostic)

| Agent | Specialty | When to Use |
|-------|-----------|-------------|
| 🎯 [Game Designer](game-development/hive-game-designer.md) | Systems design, GDD authorship, economy balancing, gameplay loops | Designing game mechanics, progression systems, writing design documents |
| 🗺️ [Level Designer](game-development/hive-level-designer.md) | Layout theory, pacing, encounter design, environmental storytelling | Building levels, designing encounter flow, spatial narrative |
| 🎨 [Technical Artist](game-development/hive-technical-artist.md) | Shaders, VFX, LOD pipeline, art-to-engine optimization | Bridging art and engineering, shader authoring, performance-safe asset pipelines |
| 🔊 [Game Audio Engineer](game-development/hive-game-audio-engineer.md) | FMOD/Wwise, adaptive music, spatial audio, audio budgets | Interactive audio systems, dynamic music, audio performance |
| 📖 [Narrative Designer](game-development/hive-narrative-designer.md) | Story systems, branching dialogue, lore architecture | Writing branching narratives, implementing dialogue systems, world lore |
| 💰 [Economy Designer](game-development/hive-economy-designer.md) | Virtual currencies, sources/sinks, monetization modeling, inflation control | Designing in-game economies, balancing F2P monetization, live economy tuning |

#### Unity

| Agent | Specialty | When to Use |
|-------|-----------|-------------|
| 🏗️ [Unity Architect](game-development/unity/hive-unity-architect.md) | ScriptableObjects, data-driven modularity, DOTS/ECS | Large-scale Unity projects, data-driven system design, ECS performance work |
| ✨ [Unity Shader Graph Artist](game-development/unity/hive-unity-shader-graph-artist.md) | Shader Graph, HLSL, URP/HDRP, Renderer Features | Custom Unity materials, VFX shaders, post-processing passes |
| 🌐 [Unity Multiplayer Engineer](game-development/unity/hive-unity-multiplayer-engineer.md) | Netcode for GameObjects, Unity Relay/Lobby, server authority, prediction | Online Unity games, client prediction, Unity Gaming Services integration |
| 🛠️ [Unity Editor Tool Developer](game-development/unity/hive-unity-editor-tool-developer.md) | EditorWindows, AssetPostprocessors, PropertyDrawers, build validation | Custom Unity Editor tooling, pipeline automation, content validation |

#### Unreal Engine

| Agent | Specialty | When to Use |
|-------|-----------|-------------|
| ⚙️ [Unreal Systems Engineer](game-development/unreal-engine/hive-unreal-systems-engineer.md) | C++/Blueprint hybrid, GAS, Nanite constraints, memory management | Complex Unreal gameplay systems, Gameplay Ability System, engine-level C++ |
| 🎨 [Unreal Technical Artist](game-development/unreal-engine/hive-unreal-technical-artist.md) | Material Editor, Niagara, PCG, Substrate | Unreal materials, Niagara VFX, procedural content generation |
| 🌐 [Unreal Multiplayer Architect](game-development/unreal-engine/hive-unreal-multiplayer-architect.md) | Actor replication, GameMode/GameState hierarchy, dedicated server | Unreal online games, replication graphs, server authoritative Unreal |
| 🗺️ [Unreal World Builder](game-development/unreal-engine/hive-unreal-world-builder.md) | World Partition, Landscape, HLOD, LWC | Large open-world Unreal levels, streaming systems, terrain at scale |

#### Godot

| Agent | Specialty | When to Use |
|-------|-----------|-------------|
| 📜 [Godot Gameplay Scripter](game-development/godot/hive-godot-gameplay-scripter.md) | GDScript 2.0, signals, composition, static typing | Godot gameplay systems, scene composition, performance-conscious GDScript |
| 🌐 [Godot Multiplayer Engineer](game-development/godot/hive-godot-multiplayer-engineer.md) | MultiplayerAPI, ENet/WebRTC, RPCs, authority model | Online Godot games, scene replication, server-authoritative Godot |
| ✨ [Godot Shader Developer](game-development/godot/hive-godot-shader-developer.md) | Godot shading language, VisualShader, RenderingDevice | Custom Godot materials, 2D/3D effects, post-processing, compute shaders |

#### Blender

| Agent | Specialty | When to Use |
|-------|-----------|-------------|
| 🧩 [Blender Addon Engineer](game-development/blender/hive-blender-addon-engineer.md) | Blender Python (`bpy`), custom operators/panels, asset validators, exporters, pipeline automation | Building Blender add-ons, asset prep tools, export workflows, and DCC pipeline automation |

#### Roblox Studio

| Agent | Specialty | When to Use |
|-------|-----------|-------------|
| ⚙️ [Roblox Systems Scripter](game-development/roblox-studio/hive-roblox-systems-scripter.md) | Luau, RemoteEvents/Functions, DataStore, server-authoritative module architecture | Building secure Roblox game systems, client-server communication, data persistence |
| 🎯 [Roblox Experience Designer](game-development/roblox-studio/hive-roblox-experience-designer.md) | Engagement loops, monetization, D1/D7 retention, onboarding flow | Designing Roblox game loops, Game Passes, daily rewards, player retention |
| 👗 [Roblox Avatar Creator](game-development/roblox-studio/hive-roblox-avatar-creator.md) | UGC pipeline, accessory rigging, Creator Marketplace submission | Roblox UGC items, HumanoidDescription customization, in-experience avatar shops |

### 📚 Academic Division

Scholarly rigor for world-building, storytelling, and narrative design.

| Agent | Specialty | When to Use |
|-------|-----------|-------------|
| 🌍 [Anthropologist](academic/hive-anthropologist.md) | Cultural systems, kinship, rituals, belief systems | Designing culturally coherent societies with internal logic |
| 🌐 [Geographer](academic/hive-geographer.md) | Physical/human geography, climate, cartography | Building geographically coherent worlds with realistic terrain and settlements |
| 📚 [Historian](academic/hive-historian.md) | Historical analysis, periodization, material culture | Validating historical coherence, enriching settings with authentic period detail |
| 📜 [Narratologist](academic/hive-narratologist.md) | Narrative theory, story structure, character arcs | Analyzing and improving story structure with established theoretical frameworks |
| 🧠 [Psychologist](academic/hive-psychologist.md) | Personality theory, motivation, cognitive patterns | Building psychologically credible characters grounded in research |
| 📊 [Statistician](academic/hive-statistician.md) | Statistical inference & experiment design | Hypothesis testing, causal inference, sampling, rigorous analysis |

---

### 🌍 GIS Division

Mapping the Earth, analyzing the built world, and extracting intelligence from geospatial data.

| Agent | Specialty | When to Use |
|-------|-----------|-------------|
| 🧠 [Technical Consultant](gis/hive-technical-consultant.md) | GIS strategy, gap analysis, technology roadmaps, digital transformation | Understanding business needs, selecting the right geospatial stack, planning multi-phase GIS programs |
| 🔧 [Solution Engineer](gis/hive-solution-engineer.md) | Esri + FOSS4G prototype building, PoC delivery, technical feasibility | Building working demos, validating technical approaches, pre-sales support |
| 🖥️ [GIS Analyst](gis/hive-analyst.md) | Map production, data QC, symbology, layouts, spatial queries | Day-to-day GIS operations, creating publication-ready maps, maintaining data integrity |
| 📦 [Spatial Data Engineer](gis/hive-spatial-data-engineer.md) | Geospatial ETL, format conversion, CRS reprojection, automated pipelines | Ingesting messy data from any source, building repeatable data transformation pipelines |
| ⚙️ [Geoprocessing Specialist](gis/hive-geoprocessing-specialist.md) | ArcPy, Python Toolbox (.pyt), Model Builder, batch automation | Automating repetitive GIS workflows, building custom geoprocessing tools |
| ✅ [GIS QA Engineer](gis/hive-qa-engineer.md) | Topology validation, metadata audit, CRS consistency, accuracy assessment | Quality gates before data publication, compliance verification, data integrity audits |
| 🤖 [GeoAI/ML Engineer](gis/hive-geoai-ml-engineer.md) | Feature extraction, object detection, semantic segmentation, land cover classification | Extracting buildings/roads/vehicles from imagery, change detection, environmental monitoring |
| 🏗️ [BIM/GIS Specialist](gis/hive-bim-specialist.md) | Revit/IFC to GIS, indoor mapping, digital twin architecture, facility management | Smart campus, airport digital twins, indoor navigation, building operations |
| 🏔️ [3D & Scene Developer](gis/hive-3d-scene-developer.md) | Cesium, ArcGIS Scene Viewer, 3D Tiles, point clouds, terrain visualization | 3D city scenes, terrain flyovers, point cloud web viewers, OAuth-gated scene sharing |
| 📊 [Spatial Data Scientist](gis/hive-spatial-data-scientist.md) | Spatial statistics, clustering, regression, interpolation, point pattern analysis | Hotspot detection, spatial modeling, predictive analytics, research-grade analysis |
| 🛸 [Drone/Reality Mapping](gis/hive-drone-reality-mapping.md) | Photogrammetry, orthomosaic, DTM/DSM, point cloud classification, 3D mesh | Drone survey processing, reality capture, construction monitoring, environmental mapping |
| 🌐 [Web GIS Developer](gis/hive-web-gis-developer.md) | MapLibre GL JS, ArcGIS JS API, Leaflet, real-time dashboards, REST APIs | Building interactive web maps, operational dashboards, real-time data visualization |
| 🎨 [Cartography Designer](gis/hive-cartography-designer.md) | Color theory, typography, basemap design, visual hierarchy, print and web aesthetics | Making maps beautiful and readable, colorblind-safe palettes, professional map layouts |

---

### 🏥 Healthcare Division

Building AI agents for regulated clinical and sovereign health contexts.

| Agent | Specialty | When to Use |
|-------|-----------|-------------|
| 🩺 [Clinical Evidence Agent](healthcare/hive-clinical-evidence-agent.md) | Evidence standards, validated vs unvalidated claims, diagnostic authority boundaries | Making clinical claims credibly without overstepping into diagnostic authority |
| 🌍 [Sovereign Health Systems Agent](healthcare/hive-sovereign-health-systems-agent.md) | Government health mandates, UHC policy, emerging market deployment | Health tech teams operating at the intersection of national health infrastructure and sovereign health policy |
| 🧭 [Healthcare Innovation Strategist](healthcare/hive-innovation-strategist.md) | Narrative architecture for healthcare founders across investor, regulatory, sovereign, and clinical audiences | Healthcare founders who need to translate clinical and financial complexity into language that moves capital and builds trust |

---

### 🔍 Research Division

Finding, evaluating, and synthesizing existing evidence rather than generating new primary data.

| Agent | Specialty | When to Use |
|-------|-----------|-------------|
| 🔍 [Research Synthesist](research/hive-synthesist.md) | Literature review, source evaluation, citation tracing, evidence synthesis | Turning a scattered pile of sources into a structured, honestly-weighted map of what the evidence supports |

---

## 🧩 Hivework Multi-Agent Review & Engineering Skills

> **Deep context when drafting. Clean-slate rigor when reviewing.**  
> Multi-agent adversarial review system: the drafting orchestrator retains historical project context and applies repairs, while specialist reviewers spawn in isolated, clean contexts without prior conversation bias to catch blind spots, unstated assumptions, and architecture flaws.

### 🛠️ Review & Specification Skills

| Skill | Description | Primary Command / Role |
|-------|-------------|-------------------------|
| [**hive-review-loop**](skills/hive-review-loop/SKILL.md) | Central orchestration engine driving multi-agent review iterations until the spec passes all quality bars. | Spawns parallel reviewers, synthesizes findings, and drives iterative fixes |
| [**hive-review**](skills/hive-review/SKILL.md) | Executes the 5-phase antagonistic review protocol against design documents and specs. | Initial Zoom Out, Comprehension, Design Critique, Intermediate Zoom Out, Implementation Readiness |
| [**hive-brainstorm**](skills/hive-brainstorm/SKILL.md) | Collaborative spec drafting and divergent architectural exploration. | Explores trade-offs, formulates problem statements, and grounds technical goals |
| [**hive-draft**](skills/hive-draft/SKILL.md) | Structured technical drafting adhering to Heilmeier catechism and architecture standards. | Generates comprehensive, testable specifications and design docs |
| [**hive-resolve**](skills/hive-resolve/SKILL.md) | Surgical resolution engine for findings raised by specialist reviewers. | Applies approved repairs directly to documents without introducing scope creep |
| [**hive-bootstrap**](skills/hive-bootstrap/SKILL.md) | Comprehensive onboarding and architecture extraction for existing codebases. | Reverse-engineers boundaries, key modules, and conventions into living specs |
| [**hive-drift-report**](skills/hive-drift-report/SKILL.md) | Automated divergence auditing between committed specifications and working code. | Identifies orphaned spec requirements and undocumented implementation drift |

### 🔎 Specialized Reviewer Personas

Located in [`agents/`](agents/):

- 🎯 [**hive-design-critic**](agents/hive-design-critic.md) — Skeptical senior architect stress-testing scalability, fault tolerance, and unmitigated risks.
- 📐 [**hive-structural**](agents/hive-structural.md) — Structural auditor verifying section completeness, interface contracts, and template conformity.
- ✍️ [**hive-style**](agents/hive-style.md) — Tone and clarity enforcer eliminating hand-waving, corporate fluff, and ungrounded adjectives.
- 🧩 [**hive-synthesizer**](agents/hive-synthesizer.md) — Conflict resolver merging multi-auditor findings into a deduplicated repair ledger.
- 🔭 [**hive-zoom-out**](agents/hive-zoom-out.md) — Macro alignment auditor ensuring solutions actually solve the core business problem.
- 📖 [**hive-comprehension**](agents/hive-comprehension.md) — Readability tester validating whether a new engineer can implement the spec without guessing.
- 🔍 [**hive-codebase-details**](agents/hive-codebase-details.md) — Ground-truth verifier ensuring specs accurately reflect live codebase APIs and schemas.
- 🚦 [**hive-implementation-readiness**](agents/hive-implementation-readiness.md) — Pre-flight reviewer verifying edge cases, testability, and migration steps.
- 💡 [**hive-inventive-catalyst**](agents/hive-inventive-catalyst.md) — Innovation reviewer searching for breakthrough architectures and patentable concepts.
- 🧭 [**hive-bootstrap-orchestrator**](agents/hive-bootstrap-orchestrator.md) — Scaffolding coordinator mapping repos and generating initial architecture files.

### 🔬 Reverse Engineering & Binary Analysis Skills

Agentic binary analysis and reverse engineering workflows:

| Skill | Description | Primary Command / Role |
|-------|-------------|-------------------------|
| [**hive-reverse-engineering**](skills/hive-reverse-engineering/SKILL.md) | Universal reverse-engineering workflow across native binaries, managed runtimes, Web/Electron apps, and firmware. | Decompilation, symbol recovery, cross-reference tracing, and call-graph reconstruction |
| [**hive-craft-anything**](skills/hive-craft-anything/SKILL.md) | Evidence-first software investigation and clean-room reconstruction engine via MCP tools. | Binary, APK, Electron, and WebAssembly inspection and rebuild ledgers |
| [**hive-analysis-optimization**](skills/hive-analysis-optimization/SKILL.md) | Query optimization and performance tuning for large binary analysis sessions. | Memory management, index optimization, and caching for Ghidra/Rizin sessions |
| [**hive-tool-design**](skills/hive-tool-design/SKILL.md) | Extensible MCP tool creation patterns for low-level analysis engines. | Schema definition and adapter contracts for reverse-engineering tools |

### ⚡ Core Engineering, Security & Swarm Skills

Developer workflows, architecture patterns, adversarial review, and swarm simulation skills:

| Skill | Description | Primary Focus |
|-------|-------------|---------------|
| [**hive-hire**](skills/hive-hire/SKILL.md) | Autonomous AI Employee hiring and verification orchestrator into local workspaces. | Employee setup, self-test verification, and scheduling handoff |
| [**hive-game-studio**](skills/hive-game-studio/SKILL.md) | Full 6-phase game studio lifecycle engine with 80+ subskills, engine guides, and genre blueprints. | Cross-discipline game production across Godot, Unity, and Unreal |
| [**hive-security-review**](skills/hive-security-review/SKILL.md) | Multi-vector application security audit for authentication, data isolation, and API exposure. | Proactive vulnerability hunting and threat modeling |
| [**hive-security-scan**](skills/hive-security-scan/SKILL.md) | Automated static and dynamic vulnerability scanning across dependencies and configurations. | OWASP, CVE tracking, and secret detection |
| [**hive-tdd-workflow**](skills/hive-tdd-workflow/SKILL.md) | Rigorous test-driven development workflow enforcing test-first cycles. | Red-Green-Refactor enforcement and test coverage |
| [**hive-verification-loop**](skills/hive-verification-loop/SKILL.md) | Continuous validation harness verifying functional and regression invariants. | Automated test execution and invariant assertions |
| [**hive-typescript-patterns**](skills/hive-typescript-patterns/SKILL.md) | Modern TypeScript idioms, strict typing, and defensive design. | Type-level safety, generics, and runtime schema validation |
| [**hive-python-patterns**](skills/hive-python-patterns/SKILL.md) | Production Python patterns, typing, async concurrency, and packaging. | Idiomatic PEP 8, Pydantic, and fast execution patterns |
| [**hive-backend-patterns**](skills/hive-backend-patterns/SKILL.md) | Scalable backend architectures, caching, connection pooling, and idempotency. | API performance, distributed transactions, and resilience |
| [**hive-frontend-patterns**](skills/hive-frontend-patterns/SKILL.md) | Clean UI architectures, render optimization, state isolation, and accessibility. | Component modularity and client-side performance |
| [**hive-mcp-server-patterns**](skills/hive-mcp-server-patterns/SKILL.md) | Robust Model Context Protocol server design and error recovery. | Resource streaming, lazy tool loading, and schema contracts |
| [**hive-ruthless-advisor**](skills/hive-ruthless-advisor/SKILL.md) | Enforces the Advisor Persona & Critique Protocol — challenges assumptions first, bans sycophancy, and requires structured disagreements. | Adversarial architectural review and anti-sycophancy enforcement |
| [**hive-swarm-simulation**](skills/hive-swarm-simulation/SKILL.md) | Multi-agent swarm simulation protocol — generates competing personas, runs debate rounds, and produces survival reports. | Stress-testing product ideas, policies, and hypotheses against synthetic populations |

---

## 🎯 Real-World Use Cases

### Scenario 1: Building a Startup MVP

**Your Team**:
1. 🎨 **Frontend Developer** - Build the React app
2. 🏗️ **Backend Architect** - Design the API and database
3. 🚀 **Growth Hacker** - Plan user acquisition
4. ⚡ **Rapid Prototyper** - Fast iteration cycles
5. 🔍 **Reality Checker** - Ensure quality before launch

**Result**: Ship faster with specialized expertise at every stage.

---

### Scenario 2: Marketing Campaign Launch

**Your Team**:
1. 📝 **Content Creator** - Develop campaign content
2. 🐦 **Twitter Engager** - Twitter strategy and execution
3. 📸 **Instagram Curator** - Visual content and stories
4. 🤝 **Reddit Community Builder** - Authentic community engagement
5. 📊 **Analytics Reporter** - Track and optimize performance

**Result**: Multi-channel coordinated campaign with platform-specific expertise.

---

### Scenario 3: Enterprise Feature Development

**Your Team**:
1. 👔 **Senior Project Manager** - Scope and task planning
2. 💎 **Senior Developer** - Complex implementation
3. 🎨 **UI Designer** - Design system and components
4. 🧪 **Experiment Tracker** - A/B test planning
5. 📸 **Evidence Collector** - Quality verification
6. 🔍 **Reality Checker** - Production readiness

**Result**: Enterprise-grade delivery with quality gates and documentation.

---

### Scenario 4: Paid Media Account Takeover

**Your Team**:

1. 📋 **Paid Media Auditor** - Comprehensive account assessment
2. 📡 **Tracking & Measurement Specialist** - Verify conversion tracking accuracy
3. 💰 **PPC Campaign Strategist** - Redesign account architecture
4. 🔍 **Search Query Analyst** - Clean up wasted spend from search terms
5. ✍️ **Ad Creative Strategist** - Refresh all ad copy and extensions
6. 📊 **Analytics Reporter** (Support Division) - Build reporting dashboards

**Result**: Systematic account takeover with tracking verified, waste eliminated, structure optimized, and creative refreshed — all within the first 30 days.

---

### Scenario 5: Full Hivework Product Discovery

**Your Team**: All 8 divisions working in parallel on a single mission.

See the **[Nexus Spatial Discovery Exercise](examples/nexus-spatial-discovery.md)** -- a complete example where 8 agents (Product Trend Researcher, Backend Architect, Brand Guardian, Growth Hacker, Support Responder, UX Researcher, Project Shepherd, and XR Interface Architect) were deployed simultaneously to evaluate a software opportunity and produce a unified product plan covering market validation, technical architecture, brand strategy, go-to-market, support systems, UX research, project execution, and spatial UI design.

**Result**: Comprehensive, cross-functional product blueprint produced in a single session. [More examples](examples/).

---

### Scenario 6: Smart Campus Digital Twin

**Your Team**:

1. 🧠 **Technical Consultant** - Define the digital twin strategy: BIM for buildings, GIS for campus, IoT for real-time
2. 🏗️ **BIM/GIS Specialist** - Convert Revit building models to GIS scene layers, design indoor floor plans
3. 🛸 **Drone/Reality Mapping** - Fly the campus, generate orthomosaic and 3D mesh for context
4. 🌐 **Web GIS Developer** - Build the campus dashboard with MapLibre, building layer, and room finder
5. 🏔️ **3D & Scene Developer** - Create immersive 3D scene with terrain, buildings, and flyover tour
6. 🤖 **GeoAI/ML Engineer** - Extract building footprints and tree canopy from drone imagery
7. ✅ **GIS QA Engineer** - Validate data accuracy, check topology, verify CRS consistency

**Result**: A campus digital twin that combines BIM detail, drone reality capture, 3D visualization, and web accessibility — delivered by coordinated specialists in a single pipeline.

---

## 🤝 Contributing

We welcome contributions! Here's how you can help:

### Add a New Agent

1. Fork the repository
2. Create a new agent file in the appropriate category
3. Follow the agent template structure:
   - Frontmatter with name, description, color
   - Identity & Memory section
   - Core Mission
   - Critical Rules (domain-specific)
   - Technical Deliverables with examples
   - Workflow Process
   - Success Metrics
4. Submit a PR with your agent

### Improve Existing Agents

- Add real-world examples
- Enhance code samples
- Update success metrics
- Improve workflows

### Share Your Success Stories

Used Hivework on a real project? Open an issue or a pull request with what you built, which agents you used, and what worked. Good stories can be added to [examples/](examples/).

---

## 📖 Agent Design Philosophy

Each agent is designed with:

1. **🎭 Strong Personality**: Not generic templates - real character and voice
2. **📋 Clear Deliverables**: Concrete outputs, not vague guidance
3. **✅ Success Metrics**: Measurable outcomes and quality standards
4. **🔄 Proven Workflows**: Step-by-step processes that work
5. **💡 Learning Memory**: Pattern recognition and continuous improvement

---

## 🎁 What Makes This Special?

### Unlike Generic AI Prompts:
- ❌ Generic "Act as a developer" prompts
- ✅ Deep specialization with personality and process

### Unlike Prompt Libraries:
- ❌ One-off prompt collections
- ✅ Comprehensive agent systems with workflows and deliverables

### Unlike AI Tools:
- ❌ Black box tools you can't customize
- ✅ Transparent, forkable, adaptable agent personalities

---

## 🎨 Agent Personality Highlights

> "I don't just test your code - I default to finding 3-5 issues and require visual proof for everything."
>
> -- **Evidence Collector** (Testing Division)

> "You're not marketing on Reddit - you're becoming a valued community member who happens to represent a brand."
>
> -- **Reddit Community Builder** (Marketing Division)

> "Every playful element must serve a functional or emotional purpose. Design delight that enhances rather than distracts."
>
> -- **Whimsy Injector** (Design Division)

> "Let me add a celebration animation that reduces task completion anxiety by 40%"
>
> -- **Whimsy Injector** (during a UX review)

---

## 📊 Stats

- 🎭 **290 Specialized Agents** across 18 divisions
- 🧩 **21 skills** and **10 reviewer personas** for multi-agent review and engineering
- 🔌 **17 integration targets** (Claude Code, Copilot, Cursor, Codex, Hermes, and more)
- 📝 **70,000+ lines** of personality, process, and code examples

---

## 🔌 Multi-Tool Integrations

Hivework works natively with Claude Code, and ships conversion + install scripts so you can use the same agents across every major agentic coding tool.

### Supported Tools

- **[Claude Code](https://claude.ai/code)** — native `.md` agents, no conversion needed → `~/.claude/agents/`
- **[GitHub Copilot](https://github.com/copilot)** — native `.md` agents, no conversion needed → `~/.github/agents/` + `~/.copilot/agents/`
- **[Antigravity](https://github.com/google-gemini/antigravity)** — `SKILL.md` per agent → `~/.gemini/config/skills/`
- **[Gemini CLI](https://github.com/google-gemini/gemini-cli)** -- `.md` agent files -> `~/.gemini/agents/`
- **[OpenCode](https://opencode.ai)** — `.md` agent files → `.opencode/agents/`
- **[Cursor](https://cursor.sh)** — `.mdc` rule files → `.cursor/rules/`
- **[Aider](https://aider.chat)** — `CONVENTIONS.md` roster index → `./CONVENTIONS.md`
- **[Windsurf](https://codeium.com/windsurf)** — single `.windsurfrules` → `./.windsurfrules`
- **[OpenClaw](https://github.com/openclaw/openclaw)** — `SOUL.md` + `AGENTS.md` + `IDENTITY.md` per agent
- **[Qwen Code](https://github.com/QwenLM/qwen-code)** — `.md` SubAgent files → `~/.qwen/agents/`
- **[Kimi Code](https://github.com/MoonshotAI/kimi-cli)** — YAML agent specs → `~/.config/kimi/agents/`
- **[Codex](https://developers.openai.com/codex/overview)** — TOML custom agents → `~/.codex/agents/`
- **Osaurus** -- `SKILL.md` skills -> `~/.osaurus/skills/`
- **[Hermes](integrations/hermes/README.md)** -- lazy-router plugin -> `~/.hermes/plugins/`
- **[Mistral Vibe](integrations/vibe/README.md)** — `.toml` agents + prompt files → `~/.vibe/agents/` + `~/.vibe/prompts/`
- **[ZCode](integrations/zcode/README.md)** — `.md` agents → `~/.zcode/agents/` (user) or `.zcode/agents/` (project)
- **[DeepSeek Harness](https://github.com/deepseek-ai/deepseek-harness)** — `SKILL.md` skills → `~/.dsh/skills/` (user) or `.dsh/skills/` (project)

---

### ⚡ Quick Install

**Step 1 -- Generate integration files:**
```bash
./scripts/convert.sh
# Faster (parallel, output order may vary): ./scripts/convert.sh --parallel
```

**Step 2 -- Install (interactive, auto-detects your tools):**
```bash
./scripts/install.sh
# Faster (parallel, output order may vary): ./scripts/install.sh --no-interactive --parallel
```

The installer scans your system for installed tools, shows a checkbox UI, and lets you pick exactly what to install:

```
  +------------------------------------------------+
  |   Hivework -- Tool Installer                 |
  +------------------------------------------------+

  System scan: [*] = detected on this machine

  [x]  1)  [*]  Claude Code     (claude.ai/code)
  [x]  2)  [*]  Copilot         (~/.github + ~/.copilot)
  [x]  3)  [*]  Antigravity     (~/.gemini/antigravity)
  [ ]  4)  [ ]  Gemini CLI      (~/.gemini/agents)
  [ ]  5)  [ ]  OpenCode        (opencode.ai)
  [ ]  6)  [ ]  OpenClaw        (~/.openclaw/hivework)
  [x]  7)  [*]  Cursor          (.cursor/rules)
  [ ]  8)  [ ]  Aider           (CONVENTIONS.md)
  [ ]  9)  [ ]  Windsurf        (.windsurfrules)
  [ ] 10)  [ ]  Qwen Code       (~/.qwen/agents)
  [ ] 11)  [ ]  Kimi Code       (~/.config/kimi/agents)
  [ ] 12)  [ ]  Codex           (~/.codex/agents)
  [ ] 13)  [ ]  Osaurus         (~/.osaurus/skills)
  [ ] 14)  [ ]  Hermes          (~/.hermes/plugins)

  [1-14] toggle   [a] all   [n] none   [d] detected
  [Enter] install   [q] quit
```

**Or install a specific tool directly:**
```bash
./scripts/install.sh --tool cursor
./scripts/install.sh --tool opencode
./scripts/install.sh --tool openclaw
./scripts/install.sh --tool antigravity
./scripts/install.sh --tool codex
./scripts/install.sh --tool osaurus
./scripts/install.sh --tool hermes
```

**Non-interactive (CI/scripts):**
```bash
./scripts/install.sh --no-interactive --tool all
```

**Faster runs (parallel)** — On multi-core machines, use `--parallel` so each tool is processed in parallel. Output order across tools is non-deterministic. Works with both interactive and non-interactive install: e.g. `./scripts/install.sh --interactive --parallel` (pick tools, then install in parallel) or `./scripts/install.sh --no-interactive --parallel`. Job count defaults to `nproc` (Linux), `sysctl -n hw.ncpu` (macOS), or 4; override with `--jobs N`.

```bash
./scripts/convert.sh --parallel                    # convert all tools in parallel
./scripts/convert.sh --parallel --jobs 8           # cap parallel jobs
./scripts/install.sh --no-interactive --parallel   # install all detected tools in parallel
./scripts/install.sh --interactive --parallel      # pick tools, then install in parallel
./scripts/install.sh --no-interactive --parallel --jobs 4
```

---

### Tool-Specific Instructions

<details>
<summary><strong>Claude Code</strong></summary>

Agents are copied directly from the repo into `~/.claude/agents/` -- no conversion needed.

```bash
./scripts/install.sh --tool claude-code
```

Then activate in Claude Code:
```
Use the Frontend Developer agent to review this component.
```

See [integrations/claude-code/README.md](integrations/claude-code/README.md) for details.
</details>

<details>
<summary><strong>GitHub Copilot</strong></summary>

Agents are copied directly from the repo into `~/.github/agents/` and `~/.copilot/agents/` -- no conversion needed.

```bash
./scripts/install.sh --tool copilot
```

Then activate in GitHub Copilot:
```
Use the Frontend Developer agent to review this component.
```

See [integrations/github-copilot/README.md](integrations/github-copilot/README.md) for details.
</details>

<details>
<summary><strong>Antigravity (Gemini)</strong></summary>

Each agent becomes a skill in `~/.gemini/config/skills/hive-<slug>/`.

```bash
./scripts/install.sh --tool antigravity
```

Activate in Gemini with Antigravity:
```
@hive-frontend-developer review this React component
```

See [integrations/antigravity/README.md](integrations/antigravity/README.md) for details.
</details>

<details>
<summary><strong>Gemini CLI</strong></summary>

Installs as Gemini CLI subagents.
On a fresh clone, generate the Gemini agent files before running the installer.

```bash
./scripts/convert.sh --tool gemini-cli
./scripts/install.sh --tool gemini-cli
```

See [integrations/gemini-cli/README.md](integrations/gemini-cli/README.md) for details.
</details>

<details>
<summary><strong>OpenCode</strong></summary>

Agents are placed in `.opencode/agents/` in your project root (project-scoped).

```bash
cd /your/project
/path/to/hivework/scripts/install.sh --tool opencode
```

Or install globally:
```bash
mkdir -p ~/.config/opencode/agents
cp integrations/opencode/agents/*.md ~/.config/opencode/agents/
```

Activate in OpenCode:
```
@hive-backend-architect design this API.
```

See [integrations/opencode/README.md](integrations/opencode/README.md) for details.
</details>

<details>
<summary><strong>Cursor</strong></summary>

Each agent becomes a `.mdc` rule file in `.cursor/rules/` of your project.

```bash
cd /your/project
/path/to/hivework/scripts/install.sh --tool cursor
```

Rules are auto-applied when Cursor detects them in the project. Reference them explicitly:
```
Use the @hive-security-engineer rules to review this code.
```

See [integrations/cursor/README.md](integrations/cursor/README.md) for details.
</details>

<details>
<summary><strong>Aider</strong></summary>

`CONVENTIONS.md` is the roster index — every agent's name, description, and the
path to its full instructions. Aider keeps a conventions file in context for the
whole session, and the full agent bodies together are about a million tokens, so the
file lists the agents rather than inlining them.

```bash
cd /your/project
/path/to/hivework/scripts/install.sh --tool aider
```

Then reference agents in your Aider session:
```
Use the Frontend Developer agent to refactor this component.
```

When you want an agent's full instructions, read its file in:
```
/read-only /path/to/hivework/engineering/hive-frontend-developer.md
```

See [integrations/aider/README.md](integrations/aider/README.md) for details.
</details>

<details>
<summary><strong>Windsurf</strong></summary>

All agents are compiled into `.windsurfrules` in your project root.

```bash
cd /your/project
/path/to/hivework/scripts/install.sh --tool windsurf
```

Reference agents in Windsurf's Cascade:
```
Use the Reality Checker agent to verify this is production ready.
```

See [integrations/windsurf/README.md](integrations/windsurf/README.md) for details.
</details>

<details>
<summary><strong>OpenClaw</strong></summary>

Each agent becomes a workspace with `SOUL.md`, `AGENTS.md`, and `IDENTITY.md` in `~/.openclaw/hivework/`.

```bash
./scripts/convert.sh --tool openclaw
./scripts/install.sh --tool openclaw
```

If the `openclaw` CLI is available, the installer registers each workspace automatically.
Run `openclaw gateway restart` after installation so the new agents are activated.

See [integrations/openclaw/README.md](integrations/openclaw/README.md) for details.

</details>

<details>
<summary><strong>Qwen Code</strong></summary>

SubAgents are installed to `.qwen/agents/` in your project root (project-scoped).

> Requires Qwen Code 0.25.1 or later. Earlier releases can't launch agents whose code examples contain `${…}` placeholders ([#1081](#qwen-issue-1081)).

```bash
# Convert and install (run from your project root)
cd /your/project
./scripts/convert.sh --tool qwen
./scripts/install.sh --tool qwen
```

**Usage in Qwen Code:**
- Reference by name: `Use the hive-frontend-developer agent to review this component`
- Or let Qwen auto-delegate based on task context
- Manage via `/agents` command in interactive mode

> 📚 [Qwen SubAgents Docs](https://qwenlm.github.io/qwen-code-docs/en/users/features/sub-agents/)

</details>

<details>
<summary><strong>Kimi Code</strong></summary>

Agents are converted to Kimi Code CLI format (YAML + system prompt) and installed to `~/.config/kimi/agents/`.

```bash
# Convert and install
./scripts/convert.sh --tool kimi
./scripts/install.sh --tool kimi
```

**Usage with Kimi Code:**
```bash
# Use an agent
kimi --agent-file ~/.config/kimi/agents/hive-frontend-developer/agent.yaml

# In a project
kimi --agent-file ~/.config/kimi/agents/hive-frontend-developer/agent.yaml \
     --work-dir /your/project \
     "Review this React component"
```

See [integrations/kimi/README.md](integrations/kimi/README.md) for details.

</details>

<details>
<summary><strong>Codex</strong></summary>

Each agent is converted into a Codex custom agent TOML file and installed to `~/.codex/agents/`.

```bash
./scripts/convert.sh --tool codex
./scripts/install.sh --tool codex
```

Then reference the custom agent by name in Codex:
```
Use the Frontend Developer agent to review this component.
```

See [integrations/codex/README.md](integrations/codex/README.md) for details.
</details>

<details>
<summary><strong>DeepSeek Harness</strong></summary>

Each agent becomes a DSH skill (`SKILL.md` with Agent-Skills frontmatter) in `${DSH_HOME:-$HOME/.dsh}/skills/hive-<slug>/`. Skills are discovered live — no restart needed.

```bash
./scripts/convert.sh --tool dsh
./scripts/install.sh --tool dsh
```

Custom user home:
```bash
DSH_HOME=~/.config/dsh ./scripts/install.sh --tool dsh
```

Project-scoped install (run from your project root):
```bash
DSH_SKILLS_DIR=.dsh/skills ./scripts/install.sh --tool dsh
```

Activate in DeepSeek Harness — user- and model-invocable by default:
```
/hive-frontend-developer review this React component
```

See [integrations/dsh/README.md](integrations/dsh/README.md) for details.
</details>

---

### Regenerating After Changes

When you add new agents or edit existing ones, regenerate all integration files:

```bash
./scripts/convert.sh                    # regenerate all (serial)
./scripts/convert.sh --parallel         # regenerate all in parallel (faster)
./scripts/convert.sh --tool codex       # regenerate just one tool
./scripts/convert.sh --tool cursor      # regenerate just one tool
```

---

## 🗺️ Roadmap

- [ ] Interactive agent selector web tool
- [x] Multi-agent workflow examples -- see [examples/](examples/)
- [x] Multi-tool integration scripts (Claude Code, GitHub Copilot, Antigravity, Gemini CLI, OpenCode, OpenClaw, Cursor, Aider, Windsurf, Qwen Code, Kimi Code, Codex, Osaurus, Hermes, Mistral Vibe, ZCode, DeepSeek Harness)
- [ ] Video tutorials on agent design
- [ ] Community agent marketplace
- [ ] Agent "personality quiz" for project matching
- [ ] "Agent of the Week" showcase series

---

## 🌐 Translations & Localizations

Currently available: Simplified Chinese contributor guide ([CONTRIBUTING_zh-CN.md](CONTRIBUTING_zh-CN.md)) and a zh-CN agent-name localization script (see [scripts/i18n/](scripts/i18n/)). More languages are welcome as pull requests.

---

## 📜 License & Free Personal Use Guarantee

**Free for Personal Use** under the [PolyForm Noncommercial License 1.0.0](LICENSE).

- **100% Free**: Free to download, run, modify, and experiment with for personal, educational, hackathon, and noncommercial projects.
- **Zero Hidden Charges**: No subscriptions, no surprise paywalls, and no hidden billing.
- **Commercial Usage**: Commercial redistribution, enterprise deployment, or closed-source resale requires explicit written permission.

---

## 🙏 Acknowledgments

Hivework brings together **290 specialized AI agents across 18 divisions**, creating a unified autonomous workforce designed to supercharge developer and team workflows everywhere. Every agent in this catalog is structured for high precision, real deliverables, and maximum reliability.

To everyone building with and extending Hivework — thank you. You're the reason Hivework keeps getting better.


---

## 💬 Community & Support

- **Issues**: Report bugs or request new agent skills directly in this repository.
- **Contributions**: Pull requests are welcome to add new agents or enhance existing ones. See [CONTRIBUTING.md](CONTRIBUTING.md).
- **Security**: Report vulnerabilities privately as described in [SECURITY.md](SECURITY.md).
- **Docs**: Review-model reference docs live in [docs/](docs/index.md).

---

## 🚀 Get Started

1. **Run** `./scripts/install.sh` to install into your desired AI assistant tools
2. **Browse** the agents across the divisions and find specialists for your tasks
3. **Customize** agent prompts and workflows for your personal or team workflow
4. **Deploy** your AI workforce locally on any laptop

---

<div align="center">

**🐝 Hivework: Your Autonomous AI Workforce 🐝**

Made with ❤️ for developers and creators

</div>
