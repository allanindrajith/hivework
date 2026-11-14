# Swarm Reality Simulator Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Implement the Swarm Reality Simulator agent and execution skill inspired by MiroFish's OASIS multi-agent simulation framework into Hivework.

**Proposed Changes:**
1. `specialized/specialized-swarm-reality-simulator.md`: Hivework agent definition with YAML frontmatter, mission, persona, and critical rules.
2. `skills/swarm-simulation/SKILL.md`: Multi-agent swarm execution protocol for idea stress-testing.
3. `README.md`: Entry in Specialized agent roster.
4. Validation: Verify via `./scripts/lint-agents.sh` and `./scripts/check-divisions.sh`.

## Tasks

- [x] Task 1: Create `specialized/specialized-swarm-reality-simulator.md` <!-- id: 0 -->
  - [x] Write agent specification following Hivework persona guidelines and YAML frontmatter (`name`, `description`, `color`, `vibe`).
  - [x] Include Identity & Memory, Core Mission, Communication Style, and Critical Rules.
  - [x] Verify agent passes `./scripts/lint-agents.sh specialized/specialized-swarm-reality-simulator.md`.

- [x] Task 2: Create `skills/swarm-simulation/SKILL.md` <!-- id: 1 -->
  - [x] Write execution skill detailing the 4-phase simulation pipeline (Seed Ontology, Persona Matrix, Collision Rounds, Consensus Synthesis).
  - [x] Include concrete prompt templates and structured JSON report schema for idea testing.

- [x] Task 3: Update `README.md` and Validate Entire Catalog <!-- id: 2 -->
  - [x] Add `Swarm Reality Simulator` to the Specialized division list in `README.md`.
  - [x] Run `./scripts/check-divisions.sh` to ensure division integrity.
  - [x] Run `./scripts/lint-agents.sh specialized/specialized-swarm-reality-simulator.md`.
