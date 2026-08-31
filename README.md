# d0x2a tap

Homebrew casks for [d0x2a](https://github.com/d0x2a) projects.

## mTerm

A native macOS terminal emulator — opinionated, GPU-accelerated, focused.
See [d0x2a/mTerm](https://github.com/d0x2a/mTerm).

```bash
brew install --cask d0x2a/tap/mterm
```

Or tap first, then install:

```bash
brew tap d0x2a/tap
brew install --cask mterm
```

Or in a `brew bundle` `Brewfile`:

```ruby
tap "d0x2a/tap"
cask "mterm"
```

To remove it along with its preferences and session state:

```bash
brew uninstall --zap --cask mterm
```
