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

The cask also installs a `kuddo` command: `kuddo` opens Kuddo, and
`kuddo <folder>` opens a tab there.

To remove it along with its preferences and session state:

```bash
brew uninstall --zap --cask kuddo
```

Kuddo was called mTerm up to 1.6.0. An install made under the old name,
`mterm`, no longer gets updates; switch it to the new one with:

```bash
brew uninstall --cask mterm && brew install --cask d0x2a/tap/kuddo
```

Homebrew trusts a third-party cask by its name, so the full
`d0x2a/tap/kuddo` matters the first time. mTerm 1.6.0, the last release with
an Intel build, stays at
[d0x2a/mTerm](https://github.com/d0x2a/mTerm/releases/tag/v1.6.0).
