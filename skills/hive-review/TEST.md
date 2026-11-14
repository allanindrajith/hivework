# Test Plan: Hivework Review & Subagents

Frontmatter and link checks run in the Hivework validation suite (see [CONTRIBUTING.md](../../CONTRIBUTING.md)).

## Protocol Verification Checklist

When evaluating or exploring `hive-review` interactively in chat, verify:

-   **Step 1 (Intake):** Gathers `TargetFile` and optional `Hivework ReviewerContext`.
    Before the first stage that takes `Hivework ReviewerContext`, adds linked files
    inside the working directory, asks before adding links that resolve
    outside it or URLs, and saves each URL in `Hivework ReviewerContext` as a file.
-   **Step 2 (Preset Selection):** Offers the four review presets (interactive,
    consolidated, feature spec only, implementation plan only), or maps an
    explicit `Step` argument to its corresponding preset or individual stage subflow.
-   **Step 3 (Semantic Split):** Discovers the split line between Feature Spec
    and Detailed Implementation Plan.
-   **Step 5 (Initial Strategic Review):** Spawns `hive-zoom-out` and `hive-inventive-catalyst` in parallel to audit altitude and false architectural compromises.
-   **Subflows:** Properly delegates Initial Strategic Review, Comprehension, Critic Review, Intermediate Zoom Out, and Readiness Test.
