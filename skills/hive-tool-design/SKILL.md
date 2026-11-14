---
name: hive-tool-design
description: Audit, investigate, design, or change Hivework reverse-engineering investigation tools, CLI/MCP contracts, provider capabilities, and Evidence semantics.
---

# Hivework Tool Design

Enforce clean tool boundaries (single responsibility, explicit schemas, no redundant wrappers),
contract semantics, provider ownership, and discoverability. Inspect the current
contract and nearest existing tool relevant to the analyst question; source,
documentation, and live catalogs may describe different versions.

For provider-backed work, exercise the analyst's task through the reverse-engineering MCP server and compare
relevant native provider and independent artifact observations where available.
Check applicable partial results, recovery and session boundaries; report what
was not exercised. For failure guidance, design recovery paths explicitly around the observed failure mode (never swallow partial state).
Use end-to-end provider-backed workflow verification
to select evidence for the proposed contract instead of seeking provider API
parity.

For an audit of existing tools:
scope representative tasks, exercise the live workflow, and distinguish
reproduced bugs, supported limitations, design opportunities and unverified
claims. Check relevant rendered MCP prompts, guided workflows and packaged skill
advice against the live contracts and exercise their suggested handoffs. Report
working alternatives and evidence limits as well as findings.

For a design request, return the proposed boundary, input/result shape, Evidence
semantics, nearest alternative, and verification approach. Implement when
requested, preserving the user's scope and existing authorization.

For implementation or verification, validate affected consumer and provider lanes and consult
[contributing](../../CONTRIBUTING.md) for generated-file ownership. Read
provider/workflow guides only as the task requires.
