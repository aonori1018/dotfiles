#!/usr/bin/env bash
# このスクリプトが置いてあるフォルダの絶対パスを DIR に入れる
DIR="$(cd "$(dirname "$0")" && pwd)"

for f in bashrc bash_aliases vimrc tmux.conf gitignore_global; do
    ln -sf "$DIR/$f" "$HOME/.$f"
done
