#!/usr/bin/env bash
# convert.sh and install.sh: --help documents every option and exits 0; an
# unknown option exits non-zero with the usage text on stderr.
#
# Both scripts used to call usage() after "Unknown option", and usage() always
# exited 0, so `convert.sh --tol codex` in CI or a wrapper read as success.
# convert.sh's --help also printed a hard-coded line range that stopped above
# --parallel, --jobs and --out.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
tmp="$(mktemp -d "${TMPDIR:-/tmp}/hive-cli-usage.XXXXXX")"
trap 'rm -rf "$tmp"' EXIT

fail() { echo "FAIL: $*" >&2; exit 1; }

for script in convert.sh install.sh; do
  status=0
  bash "$SCRIPT_DIR/$script" --no-such-flag > "$tmp/out" 2> "$tmp/err" || status=$?
  [[ "$status" -ne 0 ]] || fail "$script --no-such-flag exited 0"
  grep -q 'Unknown option: --no-such-flag' "$tmp/err" || fail "$script did not name the unknown option on stderr"
  grep -q 'Usage:' "$tmp/err" || fail "$script did not print usage on stderr for an unknown option"
  [[ ! -s "$tmp/out" ]] || fail "$script wrote to stdout for an unknown option"

  bash "$SCRIPT_DIR/$script" --help > "$tmp/help" 2>&1 || fail "$script --help exited non-zero"
  grep -q 'Usage:' "$tmp/help" || fail "$script --help printed no usage"
  ! grep -q 'USAGE-START\|USAGE-END' "$tmp/help" || fail "$script --help printed its sentinel lines"
done

for opt in --tool --out --parallel --jobs; do
  grep -q -- "^  $opt " <(bash "$SCRIPT_DIR/convert.sh" --help) \
    || fail "convert.sh --help does not describe $opt"
done

# A flag that needs a value must fail when the value is missing. `${2:?msg}` used to print a raw
# bash message and the EXIT trap then turned the status into 0, so `install.sh --tool` "succeeded".
check_missing_value() {
  local script="$1" opt="$2" status=0
  HOME="$tmp/home" bash "$SCRIPT_DIR/$script" "$opt" > "$tmp/out" 2> "$tmp/err" || status=$?
  [[ "$status" -ne 0 ]] || fail "$script $opt (no value) exited 0"
  grep -q -- "$opt requires a value" "$tmp/err" || fail "$script $opt did not say it requires a value"
  status=0
  HOME="$tmp/home" bash "$SCRIPT_DIR/$script" "$opt" --dry-run > "$tmp/out" 2> "$tmp/err" || status=$?
  [[ "$status" -ne 0 ]] || fail "$script $opt --dry-run took the next flag as its value"
}
for opt in --tool --division --agent --agents-file --path --jobs; do
  check_missing_value install.sh "$opt"
done
for opt in --tool --out --jobs; do
  check_missing_value convert.sh "$opt"
done

# Bare `mktemp` ignores TMPDIR on macOS and fails in sandboxes that block /var/folders.
if grep -nE 'mktemp( -d)?\)' "$SCRIPT_DIR/convert.sh" "$SCRIPT_DIR/install.sh"; then
  fail "bare mktemp found; use mktemp [-d] \"\${TMPDIR:-/tmp}/hive-<name>.XXXXXX\""
fi

echo "PASS: unknown options exit non-zero with usage on stderr; --help documents every convert.sh option"
echo "PASS: flags without a value exit non-zero; temp files honour TMPDIR"
