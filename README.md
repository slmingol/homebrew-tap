## homebrew-tap [![Powered By: GoReleaser](https://img.shields.io/badge/powered%20by-goreleaser-green.svg?style=flat-square)](https://github.com/goreleaser)

Homebrew Formulae to @gorelease_ex binaries, powered by @goreleaser

### Installation
```sh
$ brew install slmingol/tap/gorelease_ex
```

### Examples

#### Install
```sh
$ brew install slmingol/tap/gorelease_ex
==> Tapping slmingol/tap
Cloning into '/usr/local/Homebrew/Library/Taps/slmingol/homebrew-tap'...
remote: Enumerating objects: 11, done.
remote: Counting objects: 100% (11/11), done.
remote: Compressing objects: 100% (8/8), done.
remote: Total 11 (delta 1), reused 3 (delta 0), pack-reused 0
Receiving objects: 100% (11/11), done.
Resolving deltas: 100% (1/1), done.
Tapped 1 formula (27 files, 28.5KB).
==> Installing gorelease_ex from slmingol/tap
==> Downloading https://ghcr.io/v2/homebrew/core/go/manifests/1.16.3
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/go/blobs/sha256:69c28f5e60612801c66e51e93d32068f822b245ab83246cb6cb374572eb59e15
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:69c28f5e60612801c66e51e93d32068f822b245ab83246cb6cb374572eb59e15?se=202
######################################################################## 100.0%
==> Downloading https://github.com/slmingol/gorelease_ex/releases/download/0.0.50/gorelease_ex_0.0.50_Darwin_x86_64.tar.gz
==> Downloading from https://github-releases.githubusercontent.com/364463387/4fb83f00-b110-11eb-8f73-af2d1ccdae5f?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Cre
######################################################################## 100.0%
==> Installing dependencies for slmingol/tap/gorelease_ex: go
==> Installing slmingol/tap/gorelease_ex dependency: go
==> Pouring go--1.16.3.catalina.bottle.tar.gz
🍺  /usr/local/Cellar/go/1.16.3: 9,955 files, 503.5MB
==> Installing slmingol/tap/gorelease_ex
🍺  /usr/local/Cellar/gorelease_ex/0.0.50: 4 files, 1.6MB, built in 4 seconds
```

#### Upgrade
```sh
$ $ brew upgrade slmingol/tap/gorelease_ex
Updating Homebrew...
==> Auto-updated Homebrew!
Updated 3 taps (homebrew/cask-versions, homebrew/cask and slmingol/tap).
==> Updated Formulae
Updated 1 formula.
==> New Casks
usr-sse2-rdm
==> Updated Casks
Updated 18 casks.
==> Deleted Casks
spideroak-share
==> Upgrading 1 outdated package:
slmingol/tap/gorelease_ex 0.0.50 -> 0.0.52
==> Upgrading slmingol/tap/gorelease_ex 0.0.50 -> 0.0.52
==> Downloading https://github.com/slmingol/gorelease_ex/releases/download/0.0.52/gorelease_ex_0.0.52_Darwin_x86_64.tar.gz
==> Downloading from https://github-releases.githubusercontent.com/364463387/e50b0180-b117-11eb-9ec8-ee52b4d58809?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Cre
######################################################################## 100.0%
🍺  /usr/local/Cellar/gorelease_ex/0.0.52: 4 files, 1.6MB, built in 4 seconds
Removing: /usr/local/Cellar/gorelease_ex/0.0.50... (4 files, 1.6MB)
Removing: /Users/smingolelli/Library/Caches/Homebrew/gorelease_ex--0.0.50.tar.gz... (636.5KB)
```

#### Uninstall
```sh
$ brew uninstall gorelease_ex
Uninstalling /usr/local/Cellar/gorelease_ex/0.0.52... (4 files, 1.6MB)
```

#### Search
```sh
$ brew search gorelease_ex
==> Formulae
slmingol/tap/gorelease_ex ✔
```

### References
- [gorelease_ex]()https://github.com/slmingol/gorelease_ex)
- [GoReleaser - Homebrew](https://goreleaser.com/customization/homebrew/)
