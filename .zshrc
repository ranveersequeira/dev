# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"

# Load and initialise completion system
autoload -Uz compinit
compinit
export PNPM_HOME="/home/ranveersequeira/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="$HOME/.tmuxifier/bin:$PATH"


# eval "$(tmuxifier init -)"

# alias cr="cargo run"

alias std="sudo shutdown now"
alias rb="sudo reboot now"
alias re="npm run android && npm run start"
alias rmb="npm run android:build-apk"
alias gg="lazygit"
alias gp="git pull"
alias gcb="git checkout"
alias gnb="git checkout -b"
alias nr="npm run"
alias gpd="git pull origin development"
alias rnt="detox test -c android.emu.debug"
alias npm="pnpm"
alias gwa="git worktree add "
alias gwr="git worktree remove"
alias gwl="git worktree list"



# Added by Antigravity
export PATH="/Users/devkraft/.antigravity/antigravity/bin:$PATH"
