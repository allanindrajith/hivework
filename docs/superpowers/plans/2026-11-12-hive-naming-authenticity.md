# Hivework Unified `hive-*` Naming & Authenticity Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Unify all 296 division agents, 21 `skills/`, 10 `agents/`, and all 18 `integrations/` tool targets under the `hive-*` naming convention while preserving `SKILL.md` discovery, fixing broken links/tests, adding `install.sh --skills`, and regenerating all integration outputs and manifests.

**Architecture:** Source division files move to `<division>/[subdir/]hive-<role>.md` (0 collisions across 296 stems) with human display `name:` kept in YAML frontmatter; `skills/` directories and `agents/*.md` files move to `hive-*` with internal cross-references and origin metadata scrubbed; `tools.json`, `scripts/convert.sh`, `scripts/build-hermes-plugin.py`, `scripts/install.sh`, `strategy/runbooks.json`, documentation, and the full bash/Python CI suite are updated in lockstep.

**Tech Stack:** Bash 3.2+ (macOS & Linux compatible, no `jq`), Python 3.11+ (`pyyaml`, `tomllib`, `json`), Git.

**Spec:** `docs/superpowers/specs/2026-11-12-hive-naming-authenticity-design.md`

## Global Constraints

- Keep the instruction filename inside every `skills/hive-*/` directory strictly named `SKILL.md` (never `hive-*.md`).
- Keep human-readable display `name:` in division agent YAML frontmatter (e.g. `Frontend Developer`) so UIs stay readable; derive `hive-$(slugify "$name")` for output files.
- All scripts in `scripts/*.sh` must pass `bash -n` and run on both macOS bash 3.2 and Linux bash 5 without `jq`.
- Preserve `docs/superpowers/` (do not alter specs/plans) and preserve `agency-agents-router` legacy migration test fixtures inside `scripts/check-hermes-config-rewrite.py`.
- Fold uncommitted `skills/swarm-simulation/` and `specialized/specialized-swarm-reality-simulator.md` into `skills/hive-swarm-simulation/` and `specialized/hive-swarm-reality-simulator.md`.

## Review Focus

1. `strategy/runbooks.json` slug mismatch or `scripts/check-runbooks.sh` falsely picking up non-division directories (`skills/`, `agents/`, `docs/`, `resources/`, `assets/`) — pinned in Task 1 (`./scripts/check-runbooks.sh` and `./scripts/test-agent-selection.sh`).
2. `skills/hive-*/SKILL.md` having mismatched `name:` frontmatter, broken internal skill/agent references, or dead `../../../docs/development/*` links — pinned in Task 2 via Python frontmatter & markdown link verification.
3. `tools.json`, `scripts/convert.sh`, and `scripts/test-convert-outputs.sh` (`slug_of()`, `owner_of()`) disagreeing on `hive-` prefixed filenames (`.md`, `.toml`, `.mdc`) — pinned in Task 3 & Task 6 (`./scripts/check-tools.sh` and `./scripts/test-convert-outputs.sh`).
4. `scripts/install.sh --skills` altering `TOTAL_AGENTS` file counts during normal division installs or failing `--link`/`--dry-run`/`--path` — pinned in Task 5 (`./scripts/test-install.sh`).
5. Blind replacement breaking `agency-agents-router` legacy cleanup test cases in `scripts/check-hermes-config-rewrite.py` — pinned in Task 4 (`./scripts/check-hermes-config-rewrite.sh`).

---

### Task 1: Rename 296 Division Agents to `hive-<role>.md` & Update Runbooks

**Files:**
- Rename: all 296 `.md` files under the 18 divisions listed in `divisions.json` (including uncommitted `specialized/specialized-swarm-reality-simulator.md` → `specialized/hive-swarm-reality-simulator.md`)
- Modify: `strategy/runbooks.json`, `scripts/check-runbooks.sh:18-49`
- Test: `scripts/check-divisions.sh`, `scripts/check-runbooks.sh`, `scripts/lint-agents.sh`

**Interfaces:**
- Consumes: `divisions.json` (canonical 18 divisions)
- Produces: 296 `<division>/[subdir/]hive-<role>.md` files whose stems match `strategy/runbooks.json` `roster[].agents[]` (`hive-<role>`)

- [ ] **Step 1: Verify collision-free target map and baseline failure if runbooks aren't updated**

Run:
```bash
python3 -c '
import json, glob, os
divs = sorted(json.load(open("divisions.json"))["divisions"].keys())
seen = {}
for d in divs:
    for f in sorted(glob.glob(f"{d}/**/*.md", recursive=True)):
        stem = os.path.basename(f)[:-3]
        role = stem[len(d)+1:] if stem.startswith(d+"-") else stem
        target = f"hive-{role}"
        assert target not in seen, f"collision {target}: {seen[target]} vs {f}"
        seen[target] = f
print(f"Verified {len(seen)} unique hive-* targets")
'
```
Expected: `Verified 296 unique hive-* targets`

- [ ] **Step 2: Rename all 296 division `.md` files to `hive-<role>.md`**

Use `git mv` for tracked files and `mv` for untracked `specialized/specialized-swarm-reality-simulator.md` → `specialized/hive-swarm-reality-simulator.md`, stripping a leading `<division>-` from the stem before prepending `hive-`. Note `project-management/project-manager-senior.md` does not start with `project-management-`, so it becomes `project-management/hive-project-manager-senior.md`.

- [ ] **Step 3: Update `strategy/runbooks.json` and `scripts/check-runbooks.sh`**

Update `strategy/runbooks.json` `_note` and all `roster[].agents[]` entries to `hive-<role>` using the exact rename map from Step 2 (e.g. `"engineering-frontend-developer"` → `"hive-frontend-developer"`, `"agents-orchestrator"` → `"hive-agents-orchestrator"`, `"project-manager-senior"` → `"hive-project-manager-senior"`).
In `scripts/check-runbooks.sh:47`, expand `NON_DIVISION` to:
```python
NON_DIVISION = {
    "integrations", "examples", "strategy", "scripts", ".github",
    "skills", "agents", "docs", "resources", "assets",
}
```
Update the example comment at `scripts/check-runbooks.sh:18` to `engineering/hive-frontend-developer.md -> "hive-frontend-developer"`.

- [ ] **Step 4: Verify divisions, runbooks, and agent lint pass**

Run:
```bash
./scripts/check-divisions.sh && ./scripts/check-runbooks.sh && ./scripts/lint-agents.sh
```
Expected:
- `PASSED: 18 divisions consistent across divisions.json, directories, scripts, and CI.`
- `PASSED: ... all resolve to real agent files.`
- `lint-agents.sh` exits `0` with 0 errors.

- [ ] **Step 5: Commit Task 1**

```bash
git add -A academic design engineering finance game-development gis healthcare marketing paid-media product project-management research sales security spatial-computing specialized support testing strategy/runbooks.json scripts/check-runbooks.sh
git commit -m "refactor(agents): standardize 296 division filenames and runbooks on hive-*"
```

---

### Task 2: Rename 10 `agents/` Personas & 21 `skills/` Directories to `hive-*`

**Files:**
- Rename & Modify: 10 files in `agents/*.md` → `agents/hive-*.md`
- Rename & Modify: 21 directories in `skills/*` → `skills/hive-*` (keeping `SKILL.md` filename intact inside each directory), including `skills/*/agents/openai.yaml`, `skills/*/TEST.md`, `skills/*/test_scenarios.yaml`, `skills/*/references/*`
- Test: Python frontmatter & internal reference/link verifier

**Interfaces:**
- Consumes: Target mapping tables in `docs/superpowers/specs/2026-11-12-hive-naming-authenticity-design.md`
- Produces: 10 `agents/hive-*.md` files (`name: hive-*`) and 21 `skills/hive-*/SKILL.md` directories (`name: hive-*`) with zero `egm-`, `origin: ECC`, `rules/ecc/`, or dead `../../../docs/development/*` links

- [ ] **Step 1: Write and run baseline verification check confirming legacy markers fail**

Run:
```bash
python3 - <<'PY'
import glob, os, sys
skills = sorted(d for d in glob.glob("skills/*") if os.path.isdir(d))
agents = sorted(glob.glob("agents/*.md"))
bad = [p for p in skills + agents if not os.path.basename(p).startswith("hive-")]
assert not bad, f"Unprefixed paths found: {bad[:5]} (total {len(bad)})"
PY
```
Expected: FAIL (`AssertionError: Unprefixed paths found ... (total 31)`).

- [ ] **Step 2: Rename the 10 `agents/*.md` files and update frontmatter + prose**

Rename per the spec table (`bootstrap_orchestrator.md` → `hive-bootstrap-orchestrator.md`, `design_critic.md` → `hive-design-critic.md`, etc.), set YAML `name:` to match the filename stem (`hive-design-critic`, `hive-zoom-out`, etc.), and replace `EGM`/`Hivework Reviewer` terminology with Hivework review terminology where it defines agent identity/skill references.

- [ ] **Step 3: Rename the 21 `skills/*/` directories to `skills/hive-*/` and clean metadata/links**

Rename all 21 skill directories per the spec mapping table (keeping `SKILL.md` inside each):
1. Update `SKILL.md` YAML `name:` to match directory name (`hive-review`, `hive-reverse-engineering`, `hive-analysis-optimization`, `hive-tool-design`, `hive-tdd-workflow`, `hive-ruthless-advisor`, `hive-swarm-simulation`, etc.).
2. Update `agents/openai.yaml` (`display_name`, `default_prompt`), `TEST.md`, `test_scenarios.yaml` (`skill:`, `skill_file:`, regex patterns checking `hive-zoom-out`, `hive-inventive-catalyst`, `hive-design-critic`, etc.), and `references/*`.
3. In the 7 `hive-{bootstrap,brainstorm,draft,drift-report,resolve,review,review-loop}` skills, rewrite all `/egm-*`, `egm-*`, `EGM`, and `agents/<old>.md` references to `hive-*` and `agents/hive-*.md`.
4. In `hive-analysis-optimization/SKILL.md` and `hive-tool-design/SKILL.md`, replace `REA` branding with Hivework and replace the 7 dead `../../../docs/development/*` links with inline guidance / `CONTRIBUTING.md`. In `hive-reverse-engineering/`, align `reverse-engineer-anything` / `REA` skill references to `hive-reverse-engineering`.
5. In the 9 `hive-*-patterns`, `hive-security-*`, `hive-tdd-workflow`, and `hive-verification-loop` skills, remove `metadata: origin: ECC` and replace `rules/ecc/...` references with Hivework skill/convention references.

- [ ] **Step 4: Run verification check confirming 0 unprefixed dirs/files, valid frontmatter, and 0 dead links in `skills/` and `agents/`**

Run:
```bash
python3 - <<'PY'
import glob, os, re, yaml
skills = sorted(d for d in glob.glob("skills/*") if os.path.isdir(d))
agents = sorted(glob.glob("agents/*.md"))
assert len(skills) == 21 and all(os.path.basename(d).startswith("hive-") for d in skills)
assert len(agents) == 10 and all(os.path.basename(f).startswith("hive-") for f in agents)
for d in skills:
    p = os.path.join(d, "SKILL.md")
    assert os.path.isfile(p), f"Missing {p}"
    fm = yaml.safe_load(open(p).read().split("---\n", 2)[1])
    assert fm["name"] == os.path.basename(d), f"{p}: name {fm['name']} != {os.path.basename(d)}"
for f in agents:
    fm = yaml.safe_load(open(f).read().split("---\n", 2)[1])
    assert fm["name"] == os.path.basename(f)[:-3], f"{f}: name {fm['name']}"
for root in ("skills", "agents"):
    for path in glob.glob(f"{root}/**/*", recursive=True):
        if os.path.isfile(path) and path.endswith((".md", ".yaml")):
            txt = open(path, encoding="utf-8").read()
            assert "egm-" not in txt and "origin: ECC" not in txt and "docs/development/" not in txt, f"Stale ref in {path}"
print("PASSED: 21 skills and 10 agents validated.")
PY
```
Expected: `PASSED: 21 skills and 10 agents validated.`

- [ ] **Step 5: Commit Task 2**

```bash
git add -A skills agents
git commit -m "refactor(skills,agents): standardize skills and reviewer personas on hive-*"
```

---

### Task 3: Update `tools.json`, `scripts/convert.sh`, and Converter Tests

**Files:**
- Modify: `tools.json:5-20`, `scripts/convert.sh:216-677`, `scripts/test-convert-outputs.sh:142-490`, `scripts/test-convert-frontmatter.sh:42-56`, `scripts/test-convert-parallel-failure.sh:23`
- Test: `scripts/check-tools.sh`, `scripts/test-convert-frontmatter.sh`, `scripts/test-convert-slug-collisions.sh`, `scripts/test-convert-symlink-output.sh`, `scripts/test-convert-fence-model.sh`, `scripts/test-convert-parallel-failure.sh`

**Interfaces:**
- Consumes: `divisions.json`, `scripts/lib.sh` (`slugify`, `get_field`, `get_body`)
- Produces: `hive-${slug}` outputs across all 18 tools in `scripts/convert.sh`, matching `tools.json` `"slugPrefix": "hive-"`

- [ ] **Step 1: Run `scripts/test-convert-parallel-failure.sh` to observe existing failure / update converter test expectations**

Update `scripts/test-convert-parallel-failure.sh:23` (`agency-convert-parallel.*` → `hive-convert-parallel.*`), `scripts/test-convert-frontmatter.sh:42-56` (`hive-developer-tooling-engineer.md`, `hive-programmatic-display-buyer.md`), and `scripts/test-convert-outputs.sh` (`SPEC` patterns in lines 146–154 and `slug_of()`/`owner_of()` lines 160–165, 481–489 to expect and strip `hive-` on `.md`/`.toml`/`.mdc` stems and dir names).
Run `bash scripts/test-convert-frontmatter.sh` before editing `convert.sh`.
Expected: FAIL (`.../hive-developer-tooling-engineer.md` not found because `convert.sh` still outputs unprefixed names).

- [ ] **Step 2: Update `tools.json` and `scripts/convert.sh`**

1. In `tools.json`, add `"slugPrefix":"hive-"` to `codex`, `gemini-cli`, `qwen`, `cursor`, `opencode`, `kimi`, `openclaw`, `vibe`, and `zcode`.
2. In `scripts/convert.sh`, set `slug="hive-$(slugify "$name")"` in `convert_codex`, `convert_gemini_cli`, `convert_opencode`, `convert_cursor`, `convert_openclaw`, `convert_qwen`, `convert_zcode`, `convert_kimi`, and `convert_vibe`.
3. Update `scripts/convert.sh:677` example path to `/read-only /path/to/hivework/engineering/hive-frontend-developer.md`.

- [ ] **Step 3: Run tool & converter verification tests**

Run:
```bash
./scripts/check-tools.sh && \
bash scripts/test-convert-frontmatter.sh && \
bash scripts/test-convert-slug-collisions.sh && \
bash scripts/test-convert-symlink-output.sh && \
bash scripts/test-convert-fence-model.sh && \
bash scripts/test-convert-parallel-failure.sh
```
Expected: All 6 scripts exit `0` with `PASS` / `PASSED`.

- [ ] **Step 4: Commit Task 3**

```bash
git add tools.json scripts/convert.sh scripts/test-convert-outputs.sh scripts/test-convert-frontmatter.sh scripts/test-convert-parallel-failure.sh
git commit -m "feat(convert): emit hive-* filenames across all 18 integration targets"
```

---

### Task 4: Update Hermes Router Plugin (`hive_agents_*`) & Tests

**Files:**
- Modify: `scripts/build-hermes-plugin.py`, `scripts/check-hermes-plugin.py`, `scripts/test-hermes-plugin.py`
- Test: `scripts/check-hermes-plugin.py`, `scripts/test-hermes-plugin.py`, `scripts/check-hermes-config-rewrite.sh`

**Interfaces:**
- Consumes: `divisions.json`, `specialized/hive-identity-graph-operator.md`
- Produces: `hive-agents-router` plugin registering `hive_agents_search`, `hive_agents_inspect`, `hive_agents_load`, `hive_agents_delegate`

- [ ] **Step 1: Update `scripts/check-hermes-plugin.py` & `scripts/test-hermes-plugin.py` assertions first (TDD RED)**

In `scripts/check-hermes-plugin.py`:
- Update line 53 from `"identity-graph-operator.md"` to `"hive-identity-graph-operator.md"`.
- Update `expected_tools` and tool handler calls from `agency_agents_*` to `hive_agents_*`.
In `scripts/test-hermes-plugin.py`:
- Update `context.tools["agency_agents_delegate"]` and all `agency_agents_*` references to `hive_agents_*`.
Run `python3 scripts/check-hermes-plugin.py`.
Expected: FAIL (`AssertionError` on tool names).

- [ ] **Step 2: Update `scripts/build-hermes-plugin.py` to expose `hive_agents_*` tools**

Replace `agency_agents_search`, `agency_agents_inspect`, `agency_agents_load`, and `agency_agents_delegate` in `plugin_yaml()` and `init_py()` inside `scripts/build-hermes-plugin.py` with `hive_agents_*`. Regenerate Hermes output (`./scripts/convert.sh --tool hermes`).

- [ ] **Step 3: Run Hermes checks and config-rewrite regression test**

Run:
```bash
python3 scripts/check-hermes-plugin.py && \
python3 scripts/test-hermes-plugin.py && \
./scripts/check-hermes-config-rewrite.sh
```
Expected: All 3 exit `0` (`check-hermes-config-rewrite.sh` verifies legacy `agency-agents-router` migration fixtures still pass).

- [ ] **Step 4: Commit Task 4**

```bash
git add scripts/build-hermes-plugin.py scripts/check-hermes-plugin.py scripts/test-hermes-plugin.py integrations/hermes
git commit -m "refactor(hermes): rename router plugin tools to hive_agents_*"
```

---

### Task 5: Update `scripts/install.sh` (`--skills` Mode & Prefix Cleanup) and Installer Tests

**Files:**
- Modify: `scripts/install.sh:10-60,264-365,955,1580-1799`, `scripts/test-install.sh`, `scripts/test-agent-selection.sh:45-46`, `scripts/test-install-openclaw-registration.sh`, `scripts/test-install-all-path-collision.sh`, `scripts/test-install-continue-after-failure.sh`, `scripts/test-install-conversion-failure.sh`, `scripts/test-install-selection-completeness.sh`, `scripts/test-cli-usage.sh`, `scripts/test-frontmatter-closing.sh`, `scripts/test-lint-fences.sh`, `scripts/test-install-hermes-destination.sh`
- Test: All `scripts/test-install*.sh` + `scripts/test-agent-selection.sh` + `scripts/test-cli-usage.sh`

**Interfaces:**
- Consumes: `integrations/<tool>/`, `skills/hive-*/SKILL.md`
- Produces: `install.sh --skills` flag (supporting `--tool`, `--path`, `--link`, `--dry-run`) and green installer test suite

- [ ] **Step 1: Fix test assertions & add `--skills` tests in `scripts/test-install.sh` + `scripts/test-agent-selection.sh` (TDD RED)**

1. In `scripts/test-install.sh`: replace `agency-$FIRST_ENG_SLUG` (lines 250, 271, 274) with `hive-$FIRST_ENG_SLUG`; add tests asserting:
   - `./scripts/install.sh --no-interactive --tool antigravity` installs `TOTAL_AGENTS` skill directories into `$home/.gemini/config/skills/`.
   - `./scripts/install.sh --no-interactive --skills --tool claude-code` installs `TOTAL_AGENTS` `.md` files into `$home/.claude/agents/` AND `21` `hive-*/SKILL.md` directories into `$home/.claude/skills/`.
   - `./scripts/install.sh --no-interactive --skills --tool antigravity` installs `TOTAL_AGENTS + 21` `hive-*/SKILL.md` directories into `$home/.gemini/config/skills/`.
   - `./scripts/install.sh --no-interactive --skills --dry-run --tool claude-code` writes `0` files.
2. In `scripts/test-agent-selection.sh`: update line 46 to `--agent hive-frontend-developer`.
3. In `scripts/test-install-openclaw-registration.sh`: update mock fixture dir and registered ID from `example-agent` to `hive-example-agent` (matching `convert_openclaw`).
4. Replace remaining `agency-` `mktemp` prefixes in `scripts/test-*.sh` with `hive-`.
Run `./scripts/test-install.sh` and `bash scripts/test-agent-selection.sh`.
Expected: FAIL (`--skills` unknown option / `Unknown agent hive-frontend-developer` until `install.sh` / `test-install.sh` align).

- [ ] **Step 2: Implement `--skills` and clean up `agency-` leftovers in `scripts/install.sh`**

1. Document `--skills` in the `USAGE-START`..`USAGE-END` block (`scripts/install.sh:10-60`).
2. Add `INSTALL_SKILLS=false` and parse `--skills` in `main()` (plus forward `--skills` in `worker_flags()` for `--parallel`).
3. Implement `install_skills_for_tool(tool)` supporting `antigravity` (`${HOME}/.gemini/config/skills`), `osaurus` (`${HOME}/.osaurus/skills`), `dsh` (`${DSH_HOME:-${HOME}/.dsh}/skills`), `claude-code` (`${CLAUDE_CONFIG_DIR:-${HOME}/.claude}/skills`), and `codex` (`${CODEX_HOME:-${HOME}/.codex}/skills`), respecting `OVERRIDE_PATH` when `--path` is passed and copying each file under `skills/hive-*/` via `install_file` so `--link` ownership works; log an informational skip (`return 0`) for tools without a skills directory; keep standard division-only installs untouched when `INSTALL_SKILLS=false`.
4. Clean up `agency-` comments/fallbacks at lines 37, 207, 264–267, 362.

- [ ] **Step 3: Run the installer test suite**

Run:
```bash
for f in scripts/*.sh; do bash -n "$f"; done && \
./scripts/test-install.sh && \
bash scripts/test-agent-selection.sh && \
bash scripts/test-install-openclaw-registration.sh && \
bash scripts/test-install-link-ownership.sh && \
bash scripts/test-install-parallel-logs.sh && \
bash scripts/test-install-all-path-collision.sh && \
bash scripts/test-install-continue-after-failure.sh && \
bash scripts/test-install-conversion-failure.sh && \
bash scripts/test-install-selection-completeness.sh && \
bash scripts/test-install-hermes-destination.sh && \
bash scripts/test-cli-usage.sh
```
Expected: Every test exits `0`.

- [ ] **Step 4: Commit Task 5**

```bash
git add scripts/install.sh scripts/test-*.sh
git commit -m "feat(install): add --skills mode and clean up legacy agency- test assertions"
```

---

### Task 6: Regenerate All 18 Integration Targets & SHA256 Manifest

**Files:**
- Modify: `integrations/**` (all regenerated tool directories), `scripts/convert-outputs.sha256`
- Test: `scripts/test-convert-outputs.sh`

**Interfaces:**
- Consumes: 296 renamed division `.md` files, updated `scripts/convert.sh` & `scripts/build-hermes-plugin.py`
- Produces: Synchronized `integrations/` outputs and updated `scripts/convert-outputs.sha256`

- [ ] **Step 1: Regenerate all 18 tool integration directories**

Run:
```bash
./scripts/convert.sh --parallel
```
Expected: Exits `0` after converting all 15 converted tools (plus `claude-code`, `copilot`, `mcp-memory` remaining aligned).

- [ ] **Step 2: Update `scripts/convert-outputs.sha256` and validate strict round-trip**

Run:
```bash
./scripts/test-convert-outputs.sh --update && ./scripts/test-convert-outputs.sh
```
Expected: Both exit `0` with all 296 agents round-tripping and strict manifest verification passing.

- [ ] **Step 3: Commit Task 6**

```bash
git add integrations scripts/convert-outputs.sha256
git commit -m "chore(integrations): regenerate all 18 tool targets with hive-* naming"
```

---

### Task 7: Update Docs, Examples, and Internal Links (`README.md`, `CONTRIBUTING*.md`, `docs/`, `resources/`)

**Files:**
- Modify: `README.md`, `CONTRIBUTING.md:445`, `CONTRIBUTING_zh-CN.md:298`, `resources/README.md`, `integrations/*/README.md` (including `integrations/aider/README.md:37` and `integrations/hermes/README.md`), `docs/*.md`, `docs/designs/*.md`, `integrations/mcp-memory/README.md`
- Test: Python internal markdown link & stale-brand checker

**Interfaces:**
- Consumes: Final renamed paths in `divisions`, `skills/hive-*/`, `agents/hive-*.md`, `integrations/`
- Produces: Zero broken internal markdown links and zero leaked `egm-`, `origin: ECC`, or un-updated `engineering-frontend-developer.md` refs

- [ ] **Step 1: Update `README.md`, `CONTRIBUTING*.md`, `resources/README.md`, `integrations/*/README.md`, and `docs/*.md`**

1. Update all 296 division links, the 21 `skills/` table entries, and the 10 `agents/` entries in `README.md`, scrubbing `Elephant & Hivework Reviewer`, `REA`, and `Everything Claude Code (ECC)` headings/branding to Hivework-native naming.
2. Update `CONTRIBUTING.md:445`, `CONTRIBUTING_zh-CN.md:298`, and `integrations/aider/README.md:37` to `engineering/hive-frontend-developer.md`.
3. Update `integrations/hermes/README.md` (`hive_agents_*`) and `integrations/*/README.md` filename examples to `hive-<slug>`.
4. Update `resources/README.md` and `docs/*.md` + `docs/designs/*.md` (`/egm-*` → `/hive-*`, `egm-` → `hive-`, `agents/<old>.md` → `agents/hive-*.md`) while leaving `docs/superpowers/` untouched.

- [ ] **Step 2: Run internal markdown link verification**

Run:
```bash
python3 - <<'PY'
import glob, os, re
link_re = re.compile(r'\[[^\]]+\]\(([^)#\s]+)(?:#[^)]*)?\)')
roots = ["README.md", "CONTRIBUTING.md", "CONTRIBUTING_zh-CN.md", "resources/README.md"] + glob.glob("skills/**/*.md", recursive=True) + glob.glob("agents/*.md")
broken = []
for f in sorted(set(roots)):
    txt = open(f, encoding="utf-8").read()
    for target in link_re.findall(txt):
        if target.startswith(("http://", "https://", "mailto:", "#")):
            continue
        resolved = os.path.normpath(os.path.join(os.path.dirname(f), target))
        if not os.path.exists(resolved):
            broken.append((f, target, resolved))
assert not broken, f"Broken links: {broken[:10]} (total {len(broken)})"
print("PASSED: 0 broken internal markdown links.")
PY
```
Expected: `PASSED: 0 broken internal markdown links.`

- [ ] **Step 3: Commit Task 7**

```bash
git add README.md CONTRIBUTING.md CONTRIBUTING_zh-CN.md resources docs integrations/*/README.md
git commit -m "docs: align README, contributing guides, and runtime docs to hive-* paths"
```

---

### Task 8: Final End-to-End CI Parity Gate

**Files:**
- Verify only (no new edits unless a gate catches an issue)

- [ ] **Step 1: Run every CI check script locally**

Run:
```bash
./scripts/check-divisions.sh && \
./scripts/check-tools.sh && \
./scripts/check-runbooks.sh && \
./scripts/lint-agents.sh && \
./scripts/check-agent-originality.sh && \
./scripts/test-convert-outputs.sh && \
python3 scripts/check-hermes-plugin.py && \
python3 scripts/test-hermes-plugin.py && \
./scripts/check-hermes-config-rewrite.sh && \
./scripts/test-install.sh && \
bash scripts/test-agent-selection.sh && \
bash scripts/test-folded-frontmatter.sh && \
bash scripts/test-lint-qwen-placeholders.sh && \
bash scripts/test-frontmatter-closing.sh && \
bash scripts/test-lint-fences.sh
```
Expected: Every command exits `0` cleanly and `git status --short` shows a clean working tree (aside from intentional `docs/superpowers/` plans/specs if untracked).
