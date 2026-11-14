---
name: hive-swarm-simulation
description: Operational protocol for running multi-agent swarm simulations to stress-test ideas, products, and policies. Generates competing synthetic personas, simulates emergent debate rounds, and produces an objective prediction report.
---

# Hivework Swarm Simulation Protocol

Multi-agent simulation and prediction workflow adapted for Hivework teams to test ideas against simulated populations before writing code or launching campaigns.

## Overview

Traditional single-agent brainstorming suffers from sycophancy and blind spots. The Swarm Simulation protocol forces hypotheses through an adversarial multi-agent crucible modeled on the OASIS swarm simulation architecture:
1. **Ontology Seed**: Deconstructs the proposal into verifiable axioms and unstated assumptions.
2. **Adversarial Population Synthesis**: Instantiates 5–20 distinct synthetic personas with conflicting incentives.
3. **Multi-Turn Collision Dynamics**: Simulates interactions, debates, coalition building, and market shocks.
4. **Emergent Consensus Synthesis**: Generates survival probabilities, resistance thresholds, and mitigation playbooks.

---

## The 4-Phase Simulation Workflow

### Phase 1: Seed Ingestion & Ontology Mapping
Given a raw concept, policy, or product feature:
1. **Core Value Proposition**: State the exact mechanism in one testable hypothesis sentence.
2. **Explicit Entities**: Identify the beneficiaries, the bill-payers, the operational executors, and the displaced incumbents.
3. **Fragile Assumptions**: Identify the 3 assumptions that, if false, immediately destroy the idea.

### Phase 2: Persona Matrix Generation
Create an agent population matrix representing distinct psychological, economic, and operational vectors:
- **Champion (20%)**: Early adopter with high pain and low switching costs.
- **Skeptic / Incumbent (30%)**: Veteran actor with high inertia, legacy investments, and active resistance to change.
- **Adversary / Predator (20%)**: Competitor or exploiter analyzing attack surfaces, reverse engineering, or regulatory leverage.
- **Pragmatist / Median User (30%)**: Indifferent majority sensitive to cognitive load, cost, and friction.

Each persona must have:
- `persona_id`: Slug identifier
- `role`: Title and organizational context
- `core_incentive`: What maximizes their utility
- `dealbreaker`: The specific condition that causes immediate rejection
- `initial_stance`: Support (0–100)

### Phase 3: Collision Simulation Rounds
Simulate three chronological rounds of multi-agent debate:
- **Round 1 (Initial Friction & Objections)**: Each persona evaluates the proposal against their dealbreaker. Skeptics raise technical, legal, and operational objections.
- **Round 2 (Rebuttal, Negotiation & Coalitions)**: Champions defend the proposal. Pragmatists weigh benefits against cognitive load. Coalitions form or fracture.
- **Round 3 (Black-Swan Stress Injection)**: Introduce an unexpected external shock (e.g., cloud outage, hostile fork, competitor pricing cut, regulatory subpoena) to observe system resilience.

### Phase 4: Consensus Synthesis & Prediction Report
Produce a structured prediction artifact (`simulation_report.md`):

```markdown
# Swarm Reality Simulation Report: [Idea Name]

## 📊 Viability Metrics
- **Survival Index**: [0-100]% (Aggregate probability of surviving first 12 months)
- **Consensus Polarity**: [High / Moderate / Polarized]
- **Adoption Friction Score**: [Low / Medium / Fatal]

## 💥 Fatal Friction Points
1. **[Friction Point 1]**: Why Skeptics and Median Users defected.
2. **[Friction Point 2]**: Operational or economic breaking point.
3. **[Friction Point 3]**: Exploitative angle discovered by Adversaries.

## 🤝 Emergent Dynamics & Coalitions
- Details on how personas interacted and what trade-offs caused alignment shifts.

## 🛡️ Preemptive Architecture Tweaks
- 3 concrete, project-grounded changes to make right now to convert simulated skeptics into champions.
```

---

## Delegation Across Harnesses

- **Antigravity**: Run directly via `specialized-swarm-reality-simulator` persona or dispatch parallel subagents with `invoke_subagent`.
- **Claude Code**: Activate with `"Hey Claude, activate Swarm Reality Simulator mode and stress-test this hypothesis"`.
- **Cursor / Codex**: Follow the step-by-step simulation protocol in prompt context.
