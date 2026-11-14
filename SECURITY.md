# Security Policy

## Reporting a Vulnerability

If you discover a security vulnerability in Hivework, please report it responsibly. Do NOT open a public GitHub issue for security vulnerabilities. Open a private security advisory via GitHub Security tab.

## Response Timeline

- Acknowledgment: within 48 hours
- Initial assessment: within 7 days
- Fix or mitigation: depends on severity

## Scope

The Hivework repository contains Markdown-based agent definitions, skills, and shell/Python scripts for conversion, installation, and the Hermes router plugin.

### Agent files (.md)
- Non-executable prompt definitions
- No API keys, secrets, or credentials should be stored in agent files

### Shell scripts (scripts/)
- install.sh, convert.sh, lint-agents.sh, and the Hermes plugin builder (build-hermes-plugin.py) are executable
- Contributors should review scripts for unintended behavior before running

## Best Practices for Contributors

- Never commit API keys, tokens, or credentials
- Never add executable code inside agent Markdown files
- Shell scripts must be reviewed before merging
- Report suspicious agent definitions that attempt prompt injection
