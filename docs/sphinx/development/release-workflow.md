# Release workflow

This document describes how pymqrest versions are managed and published
to PyPI.

## Version management

The version is stored statically in `pyproject.toml` under
`[project].version`. It follows semantic versioning (`MAJOR.MINOR.PATCH`)
and is bumped manually before each release.

## Release flow

1. **Develop** — All feature work merges into `develop`.
2. **Release branch** — When ready to release, create a
   `release/X.Y.x` branch from `develop`. Bump the version in
   `pyproject.toml` if not already done.
3. **PR to main** — Open a pull request from the release branch to
   `main`. CI validates version format, PyPI availability, and the full
   test suite.
4. **Squash merge** — Merge the PR into `main` using squash merge.
5. **Automatic publish** — The `publish.yml` workflow fires on push to
   `main` and:
   - Extracts the version from `pyproject.toml`
   - Skips if the version is already on PyPI (idempotent)
   - Builds sdist and wheel with `uv build`
   - Publishes to PyPI via OIDC trusted publishing
   - Creates an annotated git tag (`vX.Y.Z`)
   - Creates a GitHub Release with install instructions and dist
     artifacts

## CI version gates

Pull requests trigger additional version checks:

- **PRs targeting main**: Version must not already exist on PyPI, and
  must be greater than the latest published version.
- **PRs targeting develop**: Version must differ from the version on
  `main` (prevents accidental no-op releases).

## PyPI trusted publisher setup (one-time)

Before the first release, the repository owner must configure OIDC
trusted publishing on PyPI:

1. Go to <https://pypi.org/manage/account/publishing/>.
2. Add a pending publisher:
   - **Project name**: `pymqrest`
   - **Owner**: `wphillipmoore`
   - **Repository**: `pymqrest`
   - **Workflow name**: `publish.yml`
   - **Environment**: (leave blank)
3. The first publish will claim the package name.

See the [PyPI trusted publisher documentation](https://docs.pypi.org/trusted-publishers/)
for details.

## Troubleshooting

### Version already exists on PyPI

The publish workflow skips publishing if the version already exists. To
release a new version, bump the version in `pyproject.toml` and go
through the release flow again.

### Tag already exists

The publish workflow skips tag creation if the tag already exists. This
is expected when re-running a failed workflow.

### Publish fails

Check the workflow logs for OIDC authentication errors. Ensure the
trusted publisher is configured correctly on PyPI. The workflow only
triggers on push to `main`, so the `id-token: write` permission is
scoped to that branch.
