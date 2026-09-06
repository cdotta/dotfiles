# dotfiles

zsh + antidote + starship + mise, in Ghostty. VS Code settings.

## New Mac

1. Install 1Password, sign in, Settings → Developer → "Use the SSH agent".
   The GitHub SSH key lives in the vault and signs commits too.
2. `xcode-select --install`
3. `~/.ssh/config`, mode 600:

   ```
   Host github.com
     IdentityAgent "~/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
   ```

4. ```sh
   git clone git@github.com:cdotta/dotfiles ~/Projects/own/dotfiles
   ~/Projects/own/dotfiles/install.sh
   ```

   Installs Homebrew if missing, runs the Brewfile, symlinks every config into
   place, installs node/pnpm/ruby via mise and three VS Code extensions. Safe to
   re-run.

5. `gh auth login`, SSH, skip the key upload. Then:

   ```sh
   curl -fsSL https://claude.ai/install.sh | bash
   curl -LsSf https://astral.sh/uv/install.sh | sh
   ```

Open Ghostty. `~/.zsh_history` is worth carrying over by AirDrop; it contains
secrets, so never the repo.
