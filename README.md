# Prow + GitHub Actions governance test

This public repository demonstrates Prow governing GitHub Actions without
using ProwJobs as the CI executor.

## Expected pull-request flow

1. An external contributor forks this repository and opens a pull request.
2. GitHub holds the fork's `CI` workflow before any contributor code executes.
3. A trusted organization member reviews the change and comments
   `/ok-to-test`.
4. Prow Hook and Trigger approve the held GitHub Actions workflow run.
5. GitHub Actions runs `bash scripts/verify.sh` with read-only permissions.
6. Repository owners use `/approve` and `/lgtm` to record Prow review state.
7. GitHub requires a code-owner review and a successful `Test and build` check
   before merge.

The CI workflow intentionally uses `pull_request`, never
`pull_request_target`, to ensure untrusted code does not run in a privileged
base-repository context.

See [CONTRIBUTING.md](CONTRIBUTING.md) for the test procedure.
