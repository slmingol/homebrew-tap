## homebrew-tap [![Powered By: GoReleaser](https://img.shields.io/badge/powered%20by-goreleaser-green.svg?style=flat-square)](https://github.com/goreleaser) [![Formula Validation](https://github.com/slmingol/homebrew-tap/actions/workflows/formula-validation.yml/badge.svg)](https://github.com/slmingol/homebrew-tap/actions/workflows/formula-validation.yml)

Custom Homebrew tap for tools maintained by [@slmingol](https://github.com/slmingol).

### Tap

```sh
brew tap slmingol/tap
```

### Formulae

| Formula | Description | Version |
|---------|-------------|---------|
| [claude-swap](Formula/claude-swap.rb) | Multi-account switcher for Claude Code | 0.10.2 |
| [doxctl](Formula/doxctl.rb) | Diagnostic CLI tool for VPN & DNS connectivity troubleshooting | 1.0.1 |
| [gauth](Formula/gauth.rb) | Command-line TOTP/2FA authenticator for terminal-based two-factor auth | 1.05 |
| [gorelease_ex](Formula/gorelease_ex.rb) | Example project demonstrating GoReleaser release automation workflows | 0.0.113 |
| [gotcping](Formula/gotcping.rb) | TCP connectivity tester with ping-like output, written in Go | 0.0.5-alpha |

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
