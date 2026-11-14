# Hivework Design Specifications

This directory contains the canonical technical design specifications defining
the Hivework Review Model framework, skills, reviewer personas, and
operational guardrails.

| Document | Author | Primary Component |
| :------- | :----- | :---------------- |
| site_documentation.md<br>Proposed multi-page guide, skill reference, and shared site interface. | Hivework | Website and documentation |
| [triz_integration.md](triz_integration.md)<br>Draft Soviet TRIZ method integration introducing the Inventive Catalyst persona to eliminate false architectural compromises in `/hive-brainstorm` and Step 5 of `/hive-review`. | Hivework | [`hive-brainstorm`](../../skills/hive-brainstorm/SKILL.md), [`hive-review`](../../skills/hive-review/SKILL.md) (#37) |
| [ask.md](ask.md)<br>Draft read-only command that answers questions about Hivework and suggests the next skill from workspace artifacts. | Hivework | `hive-ask` (#175) |
| [skill_icons.md](skill_icons.md)<br>Canonical skill artwork shared by plugins, the README, and the website. | Hivework | Skill presentation |
| [runtime_packaging.md](runtime_packaging.md)<br>Draft runtime package boundaries, permissions, and validation. | Hivework | Runtime packaging implementation (#136) |
| [releases.md](releases.md)<br>Draft versioned archives, checksums, and manual release procedure. | Hivework | Release implementation (#137) |
| [claude_release_branch_distribution.md](claude_release_branch_distribution.md)<br>Draft publication of the attested Claude runtime to a generated branch for directory submission. | Hivework | Claude directory publication (#121) |
| [architecture.md](architecture.md)<br>System architecture of the Hivework framework covering component models, end-to-end dataflow, and agent lifecycle. | Hivework | [Hivework Framework Architecture](../../README.md) |
| [brainstorm.md](brainstorm.md)<br>Fast zero-doc ideation tool using a 7-lens Hivework review swarm to audit and stress-test early concepts before drafting. | Hivework | [`hive-brainstorm`](../../skills/hive-brainstorm/SKILL.md) |
| [draft.md](draft.md)<br>Iterative section-by-section specification drafting protocol and semantic boundary definitions. | Hivework | [`hive-draft`](../../skills/hive-draft/SKILL.md) |
| [drift_report.md](drift_report.md)<br>Automated scanner to detect and report divergence between checked-in design specifications and live codebase implementations. | Hivework | [`hive-drift-report`](../../skills/hive-drift-report/SKILL.md) |
| [bootstrap.md](bootstrap.md)<br>Bottom-up recursive bootstrapping and sentinel-block upserting of documentation across package and repository trees. | Hivework | [`hive-bootstrap`](../../skills/hive-bootstrap/SKILL.md) |
| [review.md](review.md)<br>Multi-stage verification protocol and automated resolution engine using isolated Hivework reviewer personas. | Hivework | [`hive-review`](../../skills/hive-review/SKILL.md) |
| [synthesizer.md](synthesizer.md)<br>Intermediate orchestration subagent to coordinate swarm fan-out, deduplicate critiques, and normalize link citations. | Hivework | [`synthesizer`](../../agents/hive-synthesizer.md) |
| [additional-harnesses.md](additional-harnesses.md)<br>Proposed support for Cursor, OpenCode, and Copilot CLI. Maintainer scope approval is pending. | Hivework | [Harness integrations](../harnesses.md) |
| [multi_harness_support.md](multi_harness_support.md)<br>Proposed integration requirements and verification gates for Hermes Agent, OpenClaw, and Delta; native support remains unverified. | Hivework | [Harness Architecture](../harnesses.md) |
| [plugin_listing_presentation.md](plugin_listing_presentation.md)<br>Proposed listing text, starter prompts, and packaged skill assets without workflow-body changes. | Hivework | Plugin presentation (#122) |
