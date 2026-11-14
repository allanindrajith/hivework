# Swarm Reality Simulator Design Specification

## Overview

The **Swarm Reality Simulator** is an advanced multi-agent simulation persona and execution engine adapted from the multi-agent prediction principles of MiroFish (OASIS architecture) into native Hivework standards. It enables teams to stress-test product ideas, policy drafts, architectural proposals, and market hypotheses by spinning up parallel synthetic agent populations with competing motives, executing multi-turn interaction rounds, and synthesizing emergent consensus and unpredicted failure modes.

## Architecture & System Components

### 1. Agent Persona (`specialized/specialized-swarm-reality-simulator.md`)
- **Category**: `specialized` division
- **Role**: Chief Simulation Architect and Swarm Reality Runner
- **Voice & Tone**: Empirically rigorous, analytical, anti-sycophantic, probabilistic
- **Core Directives**:
  - Prohibits single-perspective critique; always constructs an adversarial persona matrix.
  - Enforces 4-phase simulation pipeline: Seed Ingestion -> Persona Synthesis -> Collision Round -> Consensus Synthesis.
  - Generates quantified probability distributions and explicit vulnerability maps.

### 2. Execution Skill (`skills/swarm-simulation/SKILL.md`)
- **Trigger**: Invoked when running a multi-agent scenario test, hypothesis simulation, or counterfactual prediction.
- **Workflow Steps**:
  1. `seed_ontology`: Extract core proposition, explicit entities, hidden assumptions, and shock events.
  2. `generate_personas`: Instantiate 5–20 distinct synthetic personas across demographic, ideological, or incentive spectra (Skeptics, Champions, Regulators, Exploitative Competitors, Edge-Case Users).
  3. `run_simulation`: Execute multi-round collision dynamics (Opinion Shifts, Coalition Formation, Resistance Thresholds).
  4. `synthesize_consensus`: Output a structured prediction report detailing survival score, high-probability failure points, and sensitivity parameters.

### 3. Registry & Validation
- **Lint Validation**: Must pass `./scripts/lint-agents.sh specialized/specialized-swarm-reality-simulator.md` with 0 errors and 0 warnings.
- **Division Consistency**: Validated against `./scripts/check-divisions.sh`.
- **Catalog Indexing**: Documented in `README.md` under the Specialized division section.

## Verification & Test Plan
- Run `./scripts/lint-agents.sh` to confirm YAML frontmatter compliance (`name`, `description`, `color`, `vibe`, recommended headings).
- Run `./scripts/check-divisions.sh` to verify no division list corruption.
- Dry-run a sample simulation scenario to verify operational output format.
