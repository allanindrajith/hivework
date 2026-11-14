---
name: hive-game-studio
license: PolyForm Noncommercial 1.0.0
disable-model-invocation: true
description: >-
  Coordinates the 6-phase game studio production lifecycle across Godot, Unity, and Unreal Engine.
  Provides full-studio workflows, GDD authoring, balance checks, asset audits, engine setup,
  and continuous dev-QA quality loops within the Hivework ecosystem.
---

# 🎮 Hivework Game Studio Workflow & Skills

Part of the **Hivework** open-source AI agent ecosystem by Allan Indrajith.

Coordinates 6-phase studio pipelines, creative direction, engineering, audio, art, and continuous dev-QA quality loops across Godot 4, Unity, and Unreal Engine 5.

## Studio Disciplines & Subskills

The Hivework Game Studio suite includes 80+ specialized subskills located in `skills/hive-game-studio/subskills/`:
- **Architecture & Technical Design**: `architecture-decision`, `architecture-review`, `create-architecture`, `setup-engine`
- **Game Design & Economy**: `balance-check`, `art-bible`, `asset-spec`, `quick-design`, `review-all-gdds`
- **Production & Sprint Loops**: `sprint-plan`, `sprint-status`, `dev-story`, `gate-check`, `milestone-review`
- **Engine Setup & Profiles**: Engine playbooks for Godot, Unity, and Unreal in `engines/`
- **Genre Blueprints**: System specs for Action RPG, Deckbuilder, Horror, Metroidvania, Platformer, Puzzle, and Tactics in `genres/`
- **QA & Verification**: `bug-triage`, `regression-suite`, `soak-test`, `perf-profile`, `playtest-report`

## Collaboration Protocol

Hivework Game Studio specialists operate collaboratively with human oversight:
1. **Design Pillars First**: Always ground gameplay balance and system changes in defined pillars.
2. **Dev-QA Loop**: Every technical implementation must be validated by a QA or verification check before landing.
3. **Evidence-Backed**: Zero-data assertions are prohibited (`NOT ASSESSED — NO DATA` if telemetry or test data is missing).
