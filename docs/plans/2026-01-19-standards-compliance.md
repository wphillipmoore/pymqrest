# Standards compliance plan (2026-01-19)

## Table of Contents
- [Purpose](#purpose)
- [Scope](#scope)
- [Completed work](#completed-work)
- [Remaining work](#remaining-work)
- [Acceptance criteria](#acceptance-criteria)

## Purpose
Bring pymqrest into compliance with the canonical standards and conventions
without introducing non-documentation changes in this phase.

## Scope
Documentation-only alignment, plus a concrete plan for required repository
configuration changes.

## Completed work
- Added `docs/standards-and-conventions.md` with canonical references and local
  overlay.
- Updated `AGENTS.md` to reference canonical standards and shared skills.

## Remaining work
- Add GitHub Issue Forms:
  - `.github/ISSUE_TEMPLATE/issue.yml`
  - `.github/ISSUE_TEMPLATE/config.yml` with `blank_issues_enabled: false`
- Add pull request template:
  - `.github/pull_request_template.md`
- Implement CI hard gates and required status checks for `develop`, `release`,
  and `main`:
  - `test-and-validate (3.14)`
  - `integration-tests`
  - `dependency-audit`
- Document the canonical local validation command for this repository.

## Acceptance criteria
- Required documentation is in place and references the canonical standards.
- Issue and PR templates exist and match the canonical workflow rules.
- CI hard gates are implemented and enforced as required status checks on the
  protected branches.
