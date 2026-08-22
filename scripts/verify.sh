#!/usr/bin/env bash
set -euo pipefail

test -s README.md
test -s OWNERS
test -s .github/CODEOWNERS
grep -q 'Prow + GitHub Actions' README.md

echo 'Repository verification passed.'
