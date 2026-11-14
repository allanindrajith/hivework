# Hivework Unified `hive-*` Naming & Authenticity Design Specification

## Overview

Unify all Hivework catalog artifacts—296 division agents across 18 divisions, 21 modular skills in `skills/`, 10 subagent reviewer personas in `agents/`, and all 18 integration targets in `integrations/`—under a single `hive-*` naming convention while preserving skill-loader contracts (`SKILL.md`), updating `tools.json` and `strategy/runbooks.json`, scrubbing third-party origin markers (`egm-`, `REA`, `ECC`, and legacy `agency-` leftovers), and fixing broken internal links and regression tests.

## Architecture & Naming Rules

### 1. Division Agents (296 files across 18 divisions in `divisions.json`)

- **Filename convention:** Rename every agent file `<division>/[subdir/]<stem>.md` to `<division>/[subdir/]hive-<role>.md`, stripping a redundant leading `<division>-` prefix where present (e.g., `engineering/engineering-frontend-developer.md` → `engineering/hive-frontend-developer.md`, `game-development/unity/unity-architect.md` → `game-development/unity/hive-unity-architect.md`, `specialized/specialized-swarm-reality-simulator.md` → `specialized/hive-swarm-reality-simulator.md`).
- **Uniqueness invariant:** Stripping `<division>-` across all 296 files produces 296 distinct `<role>` stems with zero collisions.
- **Frontmatter `name:`:** Keep human-readable display names (e.g., `name: Frontend Developer`) so UI catalogs stay readable; tool converters derive `hive-$(slugify "$name")` for output paths/identifiers.

### 2. Skills Directory (21 directories in `skills/`)

- **Loader invariant:** Keep the instruction file inside every skill folder named `SKILL.md` (never rename `SKILL.md` itself to `hive-*.md`), because Antigravity, Codex, Osaurus, and DSH require `skills/<skill-name>/SKILL.md` for discovery.
- **Directory, YAML `name:`, `agents/openai.yaml`, `TEST.md`, `test_scenarios.yaml`, and cross-reference mapping:**

| Current Directory | Target Directory & `name:` | Origin Cleanup |
|---|---|---|
| `skills/egm-bootstrap` | `skills/hive-bootstrap` | Replace `egm-*` / `EGM` refs with `hive-*` / `Hivework` |
| `skills/egm-brainstorm` | `skills/hive-brainstorm` | Replace `egm-*` / `EGM` refs with `hive-*` / `Hivework` |
| `skills/egm-draft` | `skills/hive-draft` | Replace `egm-*` / `EGM` refs with `hive-*` / `Hivework` |
| `skills/egm-drift-report` | `skills/hive-drift-report` | Replace `egm-*` / `EGM` refs with `hive-*` / `Hivework` |
| `skills/egm-resolve` | `skills/hive-resolve` | Replace `egm-*` / `EGM` refs with `hive-*` / `Hivework` |
| `skills/egm-review` | `skills/hive-review` | Replace `egm-*` / `EGM` / `Hivework Reviewer` refs with `hive-*` / `Hivework` |
| `skills/egm-review-loop` | `skills/hive-review-loop` | Replace `egm-*` / `EGM` refs with `hive-*` / `Hivework` |
| `skills/rea-analysis-optimization` | `skills/hive-analysis-optimization` | Replace `REA` branding; remove dead `../../../docs/development/*` links and inline local criteria |
| `skills/rea-tool-design` | `skills/hive-tool-design` | Replace `REA` branding; replace dead `../../../docs/development/*` links with `CONTRIBUTING.md` or inline contract rules |
| `skills/reverse-engineer-anything` | `skills/hive-reverse-engineering` | Replace `REA` branding and align internal refs to `hive-reverse-engineering` |
| `skills/backend-patterns` | `skills/hive-backend-patterns` | Strip `origin: ECC` and `rules/ecc/` refs |
| `skills/frontend-patterns` | `skills/hive-frontend-patterns` | Strip `origin: ECC` and `rules/ecc/` refs |
| `skills/mcp-server-patterns` | `skills/hive-mcp-server-patterns` | Strip `origin: ECC` and `rules/ecc/` refs |
| `skills/python-patterns` | `skills/hive-python-patterns` | Strip `origin: ECC` and `rules/ecc/` refs |
| `skills/security-review` | `skills/hive-security-review` | Strip `origin: ECC` and `rules/ecc/` refs |
| `skills/security-scan` | `skills/hive-security-scan` | Strip `origin: ECC` and `rules/ecc/` refs |
| `skills/tdd-workflow` | `skills/hive-tdd-workflow` | Strip `origin: ECC` and `rules/ecc/` refs |
| `skills/typescript-patterns` | `skills/hive-typescript-patterns` | Strip `origin: ECC` and `rules/ecc/` refs |
| `skills/verification-loop` | `skills/hive-verification-loop` | Strip `origin: ECC` and `rules/ecc/` refs |
| `skills/ruthless-advisor` | `skills/hive-ruthless-advisor` | Update `name:` and title/refs to `hive-ruthless-advisor` |
| `skills/swarm-simulation` | `skills/hive-swarm-simulation` | Preserve uncommitted simulation protocol under `hive-swarm-simulation` |

### 3. Reviewer Persona Subagents (10 files in `agents/`)

Rename all 10 files and update their YAML `name:` and prose references to match `skills/hive-review` and `skills/hive-review-loop`:

- `agents/bootstrap_orchestrator.md` (`egm-bootstrap-orchestrator`) → `agents/hive-bootstrap-orchestrator.md` (`hive-bootstrap-orchestrator`)
- `agents/codebase_details.md` (`egm-codebase-details`) → `agents/hive-codebase-details.md` (`hive-codebase-details`)
- `agents/comprehension.md` (`egm-comprehension`) → `agents/hive-comprehension.md` (`hive-comprehension`)
- `agents/design_critic.md` (`egm-design`) → `agents/hive-design-critic.md` (`hive-design-critic`)
- `agents/implementation_readiness.md` (`egm-implementation-readiness`) → `agents/hive-implementation-readiness.md` (`hive-implementation-readiness`)
- `agents/inventive_catalyst.md` (`egm-inventive-catalyst`) → `agents/hive-inventive-catalyst.md` (`hive-inventive-catalyst`)
- `agents/structural.md` (`egm-structural`) → `agents/hive-structural.md` (`hive-structural`)
- `agents/style.md` (`egm-style`) → `agents/hive-style.md` (`hive-style`)
- `agents/synthesizer.md` (`egm-synthesizer`) → `agents/hive-synthesizer.md` (`hive-synthesizer`)
- `agents/zoom_out.md` (`egm-zoom-out`) → `agents/hive-zoom-out.md` (`hive-zoom-out`)

## Tool Contract, Converters, Installer & Runbooks

### 1. `tools.json` & `scripts/convert.sh`

- Add `"slugPrefix": "hive-"` to `codex`, `gemini-cli`, `qwen`, `cursor`, `opencode`, `kimi`, `openclaw`, `vibe`, and `zcode` in `tools.json` (matching `antigravity`, `osaurus`, and `dsh`; `claude-code` and `copilot` already inherit `hive-*.md` via `"slugFrom": "source"`).
- Update `convert_codex`, `convert_gemini_cli`, `convert_opencode`, `convert_cursor`, `convert_openclaw`, `convert_qwen`, `convert_zcode`, `convert_kimi`, and `convert_vibe` in `scripts/convert.sh` to emit `hive-${slug}` output files/directories and `hive-${slug}` YAML/TOML identifiers where the format sets a slug identifier.
- Update the hardcoded Aider example path at `scripts/convert.sh` line 677 (`engineering/hive-frontend-developer.md`).
- Regenerate all 18 tool integration trees under `integrations/`.

### 2. Hermes Router Plugin (`scripts/build-hermes-plugin.py`)

- Rename `provides_tools` in `scripts/build-hermes-plugin.py` (and `integrations/hermes/README.md`) from `agency_agents_*` (`search`, `inspect`, `load`, `delegate`) to `hive_agents_*`.
- Update `scripts/check-hermes-plugin.py` (including line 53 `specialized/hive-identity-graph-operator.md` and expected tool names) and `scripts/test-hermes-plugin.py`.

### 3. Installer (`scripts/install.sh`)

- Keep `path_collision_group()` consistent (`claude-code`, `copilot`, `gemini-cli`, `opencode`, `qwen`, `zcode` all write `hive-*.md`).
- Replace stale `agency-` comments/fallbacks with `hive-` (retaining `hive-` stripping in `slug_allowed()`).
- Add a `--skills` flag to `scripts/install.sh` that installs the 21 `skills/hive-*/` directories (respecting `--link`, `--dry-run`, `--path`, and `--tool`) into skill-capable targets (`antigravity` → `~/.gemini/config/skills/`, `osaurus` → `~/.osaurus/skills/`, `dsh` → `${DSH_HOME:-~/.dsh}/skills/`, `claude-code` → `${CLAUDE_CONFIG_DIR:-~/.claude}/skills/`, and `codex` → `${CODEX_HOME:-~/.codex}/skills/`), leaving standard division-agent installs and `TOTAL_AGENTS` file counts untouched when `--skills` is omitted.

### 4. Runbooks (`strategy/runbooks.json`, `scripts/check-runbooks.sh`)

- Update every slug in `strategy/runbooks.json` `roster[].agents[]` (and its `_note` examples) to `hive-<role>` matching the new division `.md` filename stems.
- Expand `NON_DIVISION` in `scripts/check-runbooks.sh` to exclude `skills`, `agents`, `docs`, `resources`, and `assets` alongside `integrations`, `examples`, `strategy`, `scripts`, and `.github`.

## Documentation & Regression Test Updates

- **Docs:** Update all agent paths, skill tables, and `agents/` entries in `README.md`, `CONTRIBUTING.md` (line 445), `CONTRIBUTING_zh-CN.md` (line 298), `integrations/aider/README.md` (line 37), `resources/README.md`, and `docs/*.md` (`/egm-*` → `/hive-*`). Leave `docs/superpowers/` untouched.
- **Installer & Selection Tests:** Update `scripts/test-install.sh` lines 250, 271, 274 from `agency-$FIRST_ENG_SLUG` to `hive-$FIRST_ENG_SLUG`, update `scripts/test-agent-selection.sh` line 46 to `hive-frontend-developer`, add `--skills` coverage in `scripts/test-install.sh`, and replace `agency-` temp prefixes in `scripts/test-*.sh` with `hive-`. Preserve `agency-agents-router` fixtures inside `scripts/check-hermes-config-rewrite.py` because they verify legacy-plugin cleanup for `hive-agents-router`.
- **Output Verification & Manifest:** Update `slug_of()` and `owner_of()` in `scripts/test-convert-outputs.sh` to strip `hive-` on `.md`, `.toml`, and `.mdc` stems, and regenerate `scripts/convert-outputs.sha256` via `--update`.

## Verification Criteria

All checks must pass with exit code `0` after the final edit:

1. `./scripts/check-divisions.sh`
2. `./scripts/check-tools.sh`
3. `./scripts/check-runbooks.sh`
4. `./scripts/lint-agents.sh`
5. `./scripts/convert.sh --parallel` and `./scripts/test-convert-outputs.sh`
6. `python3 scripts/check-hermes-plugin.py`, `python3 scripts/test-hermes-plugin.py`, and `./scripts/check-hermes-config-rewrite.sh`
7. `./scripts/test-install.sh` and the remaining `scripts/test-*.sh` scripts
8. Internal markdown link check verifying zero broken links in `README.md`, `CONTRIBUTING.md`, `skills/`, `agents/`, and `docs/`
