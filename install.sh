#!/usr/bin/env bash
set -euo pipefail
DOTFILES="$(cd "$(dirname "$0")" && pwd)"

# 既存の実ファイルは .bak.<日時> に退避してからリンクを張る
link() {
  mkdir -p "$(dirname "$2")"
  if [ -e "$2" ] && [ ! -L "$2" ]; then
    mv "$2" "$2.bak.$(date +%Y%m%d%H%M%S)"
  fi
  ln -sfn "$1" "$2"
}

# Homebrew が無ければ入れる（新しい Mac 用）
if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
eval "$(/opt/homebrew/bin/brew shellenv)"

link "$DOTFILES/.vimrc"                ~/.vimrc
link "$DOTFILES/.zshrc"                ~/.zshrc
link "$DOTFILES/git/config"            ~/.config/git/config
link "$DOTFILES/starship.toml"         ~/.config/starship.toml
link "$DOTFILES/sheldon/plugins.toml"  ~/.config/sheldon/plugins.toml
link "$DOTFILES/mise/config.toml"      ~/.config/mise/config.toml
link "$DOTFILES/iterm2/tokyo-night.json" "$HOME/Library/Application Support/iTerm2/DynamicProfiles/tokyo-night.json"

# git の個人情報用ファイル（dotfiles には含めない）。無ければ雛形を作る
if [ ! -f ~/.gitconfig.local ]; then
  printf '[user]\n  name = \n  email = \n' > ~/.gitconfig.local
  echo "~/.gitconfig.local を作成しました。user.name / user.email を記入してください。"
fi

brew bundle --file="$DOTFILES/Brewfile"
