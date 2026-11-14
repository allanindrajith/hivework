# OpenCode Integration

> **❌ Don't do this:**
>
> ```bash
> # WRONG — will fail with schema validation errors
> cp hivework/engineering/*.md .opencode/agents/
> ```
>
> **✅ Do this instead:**
>
> ```bash
> /path/to/hivework/scripts/install.sh --tool opencode
> ```
>
> The source files use named colors and a `tools` field that OpenCode rejects.
> The installer converts them to `#RRGGBB` hex and strips incompatible fields
> automatically.

OpenCode agents are `.md` files with YAML frontmatter stored in
`.opencode/agents/`. The converter maps named colors to hex codes and adds
`mode: subagent` so agents are invoked on-demand via `@agent-name` rather
than cluttering the primary agent picker.

## Install

```bash
# Run from your project root
cd /your/project
/path/to/hivework/scripts/install.sh --tool opencode
```

This creates `.opencode/agents/hive-<slug>.md` files in your project directory.

## Activate an Agent

In OpenCode, invoke a subagent with the `@` prefix:

```
@hive-frontend-developer help build this component.
```

```
@hive-reality-checker review this PR.
```

You can also select agents from the OpenCode UI's agent picker.

## Agent Format

Each generated agent file contains:

```yaml
---
name: Frontend Developer
description: Expert frontend developer specializing in modern web technologies...
mode: subagent
color: "#00FFFF"
---
```

- **mode: subagent** — agent is available on-demand, not shown in the primary Tab-cycle list
- **color** — hex code (named colors from source files are converted automatically)

## Project vs Global

Agents in `.opencode/agents/` are **project-scoped**. To make them available
globally across all projects, first generate the agent files, then install
with `--path`:

```bash
./scripts/convert.sh --tool opencode
./scripts/install.sh --tool opencode --path ~/.config/opencode/agents
```

## Regenerate

```bash
./scripts/convert.sh --tool opencode
```
