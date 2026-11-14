# Hivework Brainstorm: Zero-Doc Upstream Ideation & Multi-Lens Shootdown

*   **Author:** Hivework
*   **Status:** Current
*   **Date:** 2026-11-13

--------------------------------------------------------------------------------

## Overview

The **Hivework Brainstorm Skill** (`/hive-brainstorm`) is a fast way to validate
ideas. It is intended to be run early when a human doesn't know what solution
they want yet. It gives early access to a Hivework review swarm for "half-baked"
concepts and can be used before any formal design discussion begins.

## The Problem

Drafting formal technical design documents too early in the ideation cycle leads
to two major failure modes:

1.  **Premature Commitment to Flawed Hypotheses**: When developers write full
    design documents for early-stage ideas, they invest significant effort
    specifying details for a premise that may be unnecessary.

2.  Standard AI chat brainstorming without adversarial review runs the risk of
    sycophancy.

## System Architecture & Workflow

```mermaid
sequenceDiagram
    autonumber
    actor Human as Software Engineer
    participant Brainstorm as hive-brainstorm Skill
    participant Synth as Synthesizer Persona (Mode: BRAINSTORM)
    participant Swarm as 7-Lens Hivework Reviewer Swarm
    participant Artifact as Artifact: concepts_brief.md

    Human->>Brainstorm: /hive-brainstorm (Raw Feature Idea)
    loop Multi-Turn Chat Drilling
        Brainstorm->>Human: Open-ended probing questions (no multiple-choice modals)
        Human->>Brainstorm: Clarifications & constraints
    end
    Brainstorm->>Human: Summarize anchored hypothesis & confirm readiness
    Human->>Brainstorm: Confirm ready for shootdown
    Brainstorm->>Synth: invoke_subagent (Mode: BRAINSTORM, FeatureConcept)
    Synth->>Swarm: Parallel shootdown across 7 lenses
    Swarm-->>Synth: Raw critiques & feasibility risks
    Synth->>Artifact: write_to_file (concepts_brief.md)
    Synth-->>Brainstorm: send_message (Completion & artifact link)
    Brainstorm->>Human: Highlight top objections & invite iteration
    Human->>Brainstorm: Refine or handoff to /hive-draft
```

### 1. Step 1: Open-Ended Problem Drilling

*   The skill deliberately avoids structured multiple-choice question modals
    (`ask_question`) during early ideation, forcing open-ended exploration in
    chat across multiple turns.
*   Probes the root bottleneck, consuming systems, hard non-negotiable
    invariants, and explicit non-goals.
*   Constructs a 2-3 sentence anchored hypothesis and requires explicit human
    approval before spawning the subagent swarm.

### 2. Step 2: The 7 Hivework Reviewer Brainstorming Lenses

The `synthesizer` persona spawns seven concurrent Hivework subagents to audit the
concept from distinct, conflicting perspectives:

| Lens / Persona | Core Objective | Key Question Challenged |
| :------------- | :------------- | :---------------------- |
| **1. Contrarian / YAGNI** | Complexity minimization | *Can existing libraries, APIs, or services solve this without new code?* |
| **2. Cost & Resource Economics** | Budget & infrastructure scaling | *What is peak QPS, memory footprint, storage load, or token cost at scale?* |
| **3. UX & Developer Ergonomics** | Usability & cognitive overhead | *Is the CLI/API intuitive? Are error messages actionable, or does it add developer friction?* |
| **4. Migration & Compatibility** | Rollout safety & version skew | *How do existing clients/data migrate? Does this break serialized formats or persistent storage?* |
| **5. Observability & SRE** | Telemetry & debuggability | *Are operations traceable with distributed tracing? Are monitoring metrics and alerts actionable for oncalls?* |
| **6. Tech Debt & Maintenance** | Long-term maintainability | *Does this introduce tightly coupled state machines that will become tech debt in 2 years?* |
| **7. Inventive Catalyst** | Contradiction elimination & inventive transforms | *What fundamental trade-off is this design accepting as inevitable? How can we resolve this conflict using proven software transforms to achieve the Ideal Final Result without compromise?* |

### 3. Step 3: Synthesis into `concepts_brief.md`

The synthesizer consolidates the multi-lens feedback into `concepts_brief.md` in
the side-panel artifact directory or local workspace:

*   Executive Summary & Problem Framing
*   Multi-Lens Analysis & Risk Matrix
*   Scope Boundaries (Goals vs. Non-Goals)
*   Key Architectural Decisions

### 4. Step 4: Iterative Refinement & Handoff

The engineer reviews the brief, addresses key objections, and decides whether
to:

*   Abandon the idea altogether.
*   Continue refining the hypothesis with additional Hivework Reviewer shootdown passes.
*   Transition into **`/hive-draft`** (when the concept is concrete and ready for
    formal design doc authoring).

## Implementation Files & Referenced Components

The brainstorm capability is implemented via its core skill definition and
delegates directly to the shared Hivework subagent swarm and document standards:

### Core Skill Files

| File Path | Type | Purpose & Reason for Existence |
| :-------- | :--- | :----------------------------- |
| `skills/hive-brainstorm/SKILL.md` | Skill Definition | Implements `/hive-brainstorm` workflow, multi-turn open-ended drilling, shootdown delegation, and brief finalization. |
| `skills/hive-brainstorm/TEST.md` | Unit Tests | Verification test scenarios validating the brainstorm ideation and multi-lens critique flow. |
| `skills/hive-brainstorm/test_scenarios.yaml` | Evaluation Benchmark | Benchmark test suite evaluating brainstorm ideation and multi-lens critique flow. |

### Referenced Personas & Infrastructure Components

The ideation shootdown swarm relies on intermediate orchestration and
specialized Hivework review personas defined in `agents/` and document standards:

*   **Intermediate Orchestration**:
    [`agents/hive-synthesizer.md`](../../agents/hive-synthesizer.md) (`Mode: BRAINSTORM`)
    coordinates the parallel fan-out and compiles `concepts_brief.md`.
*   **7-Lens Hivework Reviewer Personas**:
    *   [`agents/hive-zoom-out.md`](../../agents/hive-zoom-out.md): Contrarian / YAGNI Lens.
    *   [`agents/hive-design-critic.md`](../../agents/hive-design-critic.md): Cost, Quota & Resource Economics Lens.
    *   [`agents/hive-comprehension.md`](../../agents/hive-comprehension.md): UX & Developer Ergonomics Lens.
    *   [`agents/hive-implementation-readiness.md`](../../agents/hive-implementation-readiness.md): Migration & Compatibility Lens.
    *   [`agents/hive-codebase-details.md`](../../agents/hive-codebase-details.md): Codebase Grounding & Existing Reuse Lens.
    *   [`agents/hive-structural.md`](../../agents/hive-structural.md): Maintainability & Tech Debt Lens.
    *   [`agents/hive-inventive-catalyst.md`](../../agents/hive-inventive-catalyst.md): Contradiction Elimination & Inventive Transforms Lens.
*   **Referenced Standards**: Evaluates concepts against
    [`zoom-out-standard.md`](../../resources/document_standards/zoom-out-standard.md)
    and [`heilmeier-standard.md`](../../resources/document_standards/heilmeier-standard.md).

## References
*   DARPA, [The Heilmeier Catechism](https://www.darpa.mil/about/heilmeier-catechism).
