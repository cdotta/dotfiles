# dotfiles

zsh + antidote + starship + mise, in Ghostty. VS Code settings. GitHub over an
SSH key that lives in 1Password and signs commits too.

## New Mac

```sh
xcode-select --install
git clone https://github.com/cdotta/dotfiles ~/Projects/own/dotfiles
~/Projects/own/dotfiles/install.sh
```

Installs Homebrew if missing, runs the Brewfile (1Password, Ghostty, VS Code,
the font, the shell tools), symlinks every config into place including
`~/.ssh/config`, points this repo's remote at SSH, installs node/pnpm/ruby via
mise and three VS Code extensions. Safe to re-run.

Then, by hand:

1. Open 1Password, sign in, Settings → Developer → "Use the SSH agent". If it
   offers to edit `~/.ssh/config`, decline; the repo's copy is already in place.
2. `ssh -T git@github.com` — Touch ID, then "Hi cdotta!".
3. `gh auth login`, SSH, skip the key upload.
4. ```sh
   curl -fsSL https://claude.ai/install.sh | bash
   curl -LsSf https://astral.sh/uv/install.sh | sh
   ```

Open Ghostty. `~/.zsh_history` is worth carrying over by AirDrop; it contains
secrets, so never the repo.
