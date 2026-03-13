# homebrew-tap - Copilot Agent Instructions

## Project Overview

**homebrew-tap** is a Homebrew tap repository that stores Ruby formula files generated from release artifacts.

- **Type**: Package metadata repo (no app runtime)
- **Language**: Ruby (Homebrew formula DSL)
- **Primary Content**: `Formula/*.rb`
- **Maintainer Flow**: Usually updated by release automation (GoReleaser) from source repos

## Repository Layout

```
/
├── Formula/
│   ├── doxctl.rb
│   ├── gauth.rb
│   ├── gorelease_ex.rb
│   └── gotcping.rb
└── README.md
```

## Working Rules

- Prefer updating formulas from upstream release automation rather than manual edits.
- If manual edit is required, change only the target formula file in `Formula/`.
- Keep class name, `url`, `sha256`, and `version` aligned.

## Validation Commands

### Validate one formula
```bash
brew audit --strict --online Formula/doxctl.rb
brew style Formula/doxctl.rb
```

### Local install test
```bash
brew install --build-from-source ./Formula/doxctl.rb
brew test doxctl
```

### Quick syntax sanity
```bash
ruby -c Formula/doxctl.rb
```

## Common Pitfalls

- Formula class name must match file name conventions (e.g., `doxctl.rb` => `Doxctl`)
- `sha256` must match exact archive at `url`
- `homepage` and `url` typos are common; verify before commit
- Do not add app code or binary blobs to this repository

## CI/CD Notes

- This repo may have no workflows; release automation usually runs from source repositories and opens/commits tap updates.
- Keep commits focused and formula-specific.

## Trust these instructions first; only search when they are incomplete.
