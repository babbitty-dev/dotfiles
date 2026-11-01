# dotfiles

## 新しい Mac でのセットアップ

1. Command Line Tools を入れる: `xcode-select --install`
2. App Store にサインインする（`mas` 用）
3. clone して実行する（インストールしたくないものは適宜コメントアウトなど行う）
```bash
$ git clone https://github.com/babbitty-dev/dotfiles.git ~/dotfiles
$ ~/dotfiles/install.sh
```
4. `~/.gitconfig.local` に user.name / user.email を記入する
5. `mise install` で言語を入れる

`install.sh` は何度実行しても同じ結果になります。既存の実ファイルは `.bak.<日時>` に退避されます。

## 構成

| ファイル | リンク先 |
|---|---|
| .zshrc | ~/.zshrc |
| .vimrc | ~/.vimrc |
| git/config | ~/.config/git/config |
| starship.toml | ~/.config/starship.toml |
| sheldon/plugins.toml | ~/.config/sheldon/plugins.toml |
| mise/config.toml | ~/.config/mise/config.toml |

アプリとパッケージは `Brewfile` で管理しています（`brew bundle`）。

## 置いていないもの

- `~/.gitconfig.local`（個人情報）
- `~/.ssh`, `~/.aws`（認証情報）
