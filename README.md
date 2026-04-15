# dotfiles

## Setup

```bash
git clone https://github.com/kadinvanvalin/dotfiles ~/github.com/kadinvanvalin/dotfiles
cd ~/github.com/kadinvanvalin/dotfiles
./link.sh
brew bundle
```

## Homebrew

Keep the Brewfile in sync with what's installed:

```bash
# What's installed but not in Brewfile (safe to remove)
brew bundle cleanup --dry-run

# What's in Brewfile but not installed (missing)
brew bundle check

# Snapshot current installs to Brewfile
brew bundle dump --force
```

## TODO

- [ ] Document manual macOS system preferences (migrated from mac-dev-playbook)
- [ ] SSH key setup
- [ ] mac config
