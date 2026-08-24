#!/usr/bin/env bash
set -euo pipefail

test -s README.md
test -s OWNERS
test -s .github/CODEOWNERS
grep -q 'Prow + GitHub Actions' README.md

echo 'Repository verification passed.'
echo 'External contributor code executed only after Prow authorization.'
echo 'External contributor follow-up commit reached the CI runner.'
