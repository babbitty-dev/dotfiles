eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="$HOME/.local/bin:$PATH"

# 履歴の設定
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt HIST_IGNORE_ALL_DUPS SHARE_HISTORY

eval "$(sheldon source)"
eval "$(mise activate zsh)"
eval "$(starship init zsh)"

source <(fzf --zsh)
