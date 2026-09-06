# dotfiles

zsh + antidote + starship + mise, in Ghostty. VS Code settings.

## New Mac

```sh
xcode-select --install
git clone https://github.com/cdotta/dotfiles ~/Projects/own/dotfiles
~/Projects/own/dotfiles/install.sh
```

`install.sh` installs Homebrew if missing, runs the Brewfile, symlinks every
config into place, installs node/pnpm/ruby via mise.
It is safe to re-run.

Then, by hand, the things that must not live in a repo:

```sh
gh auth login
gpg --import key.asc          # exported from the old Mac, then delete the file
gpg --edit-key 479C4F2FB405E6E2 trust   # 5, ultimate
curl -fsSL https://claude.ai/install.sh | bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

Copy `~/.ssh/id_ed25519`, its `.pub` and `~/.ssh/config` over AirDrop, or make
a new key and add it to GitHub. Open Ghostty.

## Old Mac, before wiping

```sh
gpg --export-secret-keys --armor 479C4F2FB405E6E2 > key.asc
```

`~/.zsh_history` is worth carrying over too. It contains secrets, so AirDrop,
never the repo.
