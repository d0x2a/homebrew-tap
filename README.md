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

## Athanor

A menu bar app that keeps a list of shell scripts and runs them: start, stop
and restart them, see their CPU, memory and ports, read their output, and have
the ones that crash restarted. See [d0x2a/athanor](https://github.com/d0x2a/athanor).
Apple silicon only.

```bash
brew install --cask d0x2a/tap/athanor
```

Scripts keep running when Athanor quits or is upgraded, and the next launch
picks them up again. They also outlive an uninstall, so stop them first
(Stop all in the menu). To remove Athanor along with its script list, logs and
preferences:

```bash
brew uninstall --zap --cask athanor
```
