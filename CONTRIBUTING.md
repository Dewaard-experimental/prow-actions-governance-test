# Contributing and test procedure

Contributions must come from a fork. Do not grant the test contributor
organization membership or repository collaborator access before the initial
test.

For an untrusted pull request:

1. Confirm `CI / Test and build` is awaiting approval.
2. Review the diff without executing contributor code locally.
3. Comment `/ok-to-test` as a trusted organization member.
4. Confirm Prow adds `ok-to-test` and the existing Actions run begins.
5. After CI passes, use `/approve` and `/lgtm` as appropriate.

Never include secrets in a pull request workflow and never use
`pull_request_target` to check out or execute contributor-controlled code.
