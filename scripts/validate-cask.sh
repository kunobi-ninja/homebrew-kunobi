#!/usr/bin/env bash
set -euo pipefail

# Validates a Homebrew cask file for syntax, structure, and required fields.
#
# Usage: bash scripts/validate-cask.sh [path/to/cask.rb]
#        Defaults to Casks/kunobi.rb

CASK_FILE="${1:-Casks/kunobi.rb}"

if [ ! -f "$CASK_FILE" ]; then
  echo "❌ File not found: $CASK_FILE"
  exit 1
fi

echo "Validating: $CASK_FILE"

# 1. Ruby syntax check
ruby -c "$CASK_FILE"

# 2. Structural check: file must be a single cask block with nothing outside it
FIRST_LINE=$(head -1 "$CASK_FILE")
LAST_NON_EMPTY=$(grep -v '^\s*$' "$CASK_FILE" | tail -1)

if ! echo "$FIRST_LINE" | grep -qE '^cask\s+"[^"]+"\s+do\s*$'; then
  echo "❌ File must start with: cask \"name\" do"
  exit 1
fi

if [ "$LAST_NON_EMPTY" != "end" ]; then
  echo "❌ File must end with 'end', found: $LAST_NON_EMPTY"
  exit 1
fi

# 3. Required fields check
for field in version sha256 url name desc homepage app; do
  if ! grep -qE "^\s*${field}\s" "$CASK_FILE"; then
    echo "❌ Missing required field: $field"
    exit 1
  fi
done

echo "✅ Cask valid"
