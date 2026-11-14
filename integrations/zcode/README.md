# ZCode Integration

[ZCode](https://z.ai) is Z.ai's GLM-based coding agent harness. Each Hivework
agent is rendered as a standalone Markdown agent file with `name` and
`description` frontmatter, which ZCode discovers from its agents directory.

The generated files come from `scripts/convert.sh --tool zcode`, which writes
one Markdown file per Hivework agent into `integrations/zcode/agents/`. Those
generated files are not committed (see `.gitignore`); regenerate them locally.

## Generate

From the repository root:

```bash
./scripts/convert.sh --tool zcode
```

## Install

Run the installer from your target directory:

```bash
cd /your/project && /path/to/hivework/scripts/install.sh --tool zcode
```

Agents install to `~/.zcode/agents/hive-<slug>.md` (user scope) — the directory
ZCode reads subagents from. Use `--division` / `--agent` to install a subset,
or set `ZCODE_AGENTS_DIR` to override the destination.
