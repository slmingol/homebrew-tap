<div align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=200&section=header&text=homebrew-tap&fontSize=64&fontColor=fff&animation=twinkling&fontAlignY=36&desc=Custom%20Homebrew%20tap%20%C2%B7%20maintained%20by%20%40slmingol&descAlignY=56&descSize=18" width="100%"/>
</div>

[![Formula Validation](https://github.com/slmingol/homebrew-tap/actions/workflows/formula-validation.yml/badge.svg)](https://github.com/slmingol/homebrew-tap/actions/workflows/formula-validation.yml)
[![Cleanup Artifacts](https://github.com/slmingol/homebrew-tap/actions/workflows/cleanup-artifacts.yml/badge.svg)](https://github.com/slmingol/homebrew-tap/actions/workflows/cleanup-artifacts.yml)
[![License](https://img.shields.io/github/license/slmingol/homebrew-tap?style=flat-square)](LICENSE)
[![Last Commit](https://img.shields.io/github/last-commit/slmingol/homebrew-tap?style=flat-square)](https://github.com/slmingol/homebrew-tap/commits/main)
[![Platform](https://img.shields.io/badge/platform-macOS%20%7C%20Linux-lightgrey?style=flat-square)](#)
[![Powered By: GoReleaser](https://img.shields.io/badge/powered%20by-goreleaser-green.svg?style=flat-square)](https://github.com/goreleaser)

Custom Homebrew tap for tools maintained by [@slmingol](https://github.com/slmingol).

### Tap

```sh
brew tap slmingol/tap
```

### Formulae

| Formula | Description | Version |
|---------|-------------|---------|
| [claude-swap](Formula/claude-swap.rb) | Multi-account switcher for Claude Code | [![PyPI](https://img.shields.io/pypi/v/claude-swap?style=flat-square&label=)](https://pypi.org/project/claude-swap/) |
| [doxctl](Formula/doxctl.rb) | Diagnostic CLI tool for VPN & DNS connectivity troubleshooting | [![GitHub release](https://img.shields.io/github/v/release/slmingol/doxctl?style=flat-square&label=)](https://github.com/slmingol/doxctl/releases) |
| [gauth](Formula/gauth.rb) | Command-line TOTP/2FA authenticator for terminal-based two-factor auth | [![GitHub release](https://img.shields.io/github/v/release/slmingol/gauth?style=flat-square&label=)](https://github.com/slmingol/gauth/releases) |
| [gorelease_ex](Formula/gorelease_ex.rb) | Example project demonstrating GoReleaser release automation workflows | [![GitHub release](https://img.shields.io/github/v/release/slmingol/gorelease_ex?style=flat-square&label=)](https://github.com/slmingol/gorelease_ex/releases) |
| [gotcping](Formula/gotcping.rb) | TCP connectivity tester with ping-like output, written in Go | [![GitHub release](https://img.shields.io/github/v/release/slmingol/gotcping?style=flat-square&label=)](https://github.com/slmingol/gotcping/releases) |

### Installation

```sh
# Install individual formulae
brew install slmingol/tap/claude-swap
brew install slmingol/tap/doxctl
brew install slmingol/tap/gauth
brew install slmingol/tap/gorelease_ex
brew install slmingol/tap/gotcping
```

### Common Operations

```sh
# Search
brew search slmingol/tap

# Upgrade all tap formulae
brew upgrade $(brew list --formula | grep -E 'claude-swap|doxctl|gauth|gorelease_ex|gotcping')

# Uninstall
brew uninstall <formula>
```

### References

- [GoReleaser - Homebrew](https://goreleaser.com/customization/homebrew/)
- [claude-swap](https://github.com/realiti4/claude-swap)
- [doxctl](https://github.com/slmingol/doxctl)
- [gauth](https://github.com/slmingol/gauth)
- [gorelease_ex](https://github.com/slmingol/gorelease_ex)
- [gotcping](https://github.com/slmingol/gotcping)
