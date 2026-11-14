# Antigravity Integration

Installs the full Hivework roster as Antigravity skills. Each agent is prefixed
with `hive-` to avoid conflicts with existing skills.

## Install

```bash
./scripts/install.sh --tool antigravity
```

This copies files from `integrations/antigravity/` to
`~/.gemini/config/skills/` (global). For project-scoped skills, Antigravity
also reads `<project>/.agents/skills/`.

## Activate a Skill

In Antigravity, activate an agent by its slug:

```
Use the hive-frontend-developer skill to review this component.
```

Available slugs follow the pattern `hive-<agent-name>`, e.g.:
- `hive-frontend-developer`
- `hive-backend-architect`
- `hive-reality-checker`
- `hive-growth-hacker`

## Regenerate

After modifying agents, regenerate the skill files:

```bash
./scripts/convert.sh --tool antigravity
```

## File Format

Each skill is a `SKILL.md` file with Antigravity-compatible frontmatter:

```yaml
---
name: hive-frontend-developer
description: Expert frontend developer specializing in...
risk: low
source: community
date_added: '2026-03-08'
---
```
