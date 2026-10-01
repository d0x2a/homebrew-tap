# d0x2a tap

Homebrew casks for [d0x2a](https://github.com/d0x2a) projects.

## Kuddo

A native macOS terminal emulator — opinionated, GPU-accelerated, focused.
See [d0x2a/kuddo](https://github.com/d0x2a/kuddo). Apple silicon only.

```bash
brew install --cask d0x2a/tap/kuddo
```

Or tap first, then install:

```bash
brew tap d0x2a/tap
brew install --cask kuddo
```

Or in a `brew bundle` `Brewfile`:

```ruby
tap "d0x2a/tap"
cask "kuddo"
```

To remove it along with its preferences and session state:

```bash
brew uninstall --zap --cask kuddo
```

Kuddo was called mTerm up to 1.6.0. The `mterm` cask is renamed to `kuddo`,
so an existing install moves across on the next `brew update && brew upgrade`.
mTerm 1.6.0, the last release with an Intel build, stays at
[d0x2a/mTerm](https://github.com/d0x2a/mTerm/releases/tag/v1.6.0).
