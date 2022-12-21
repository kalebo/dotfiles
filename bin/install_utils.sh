#!/usr/bin/env bash

declare -a to_install=( "fzf" "ripgrep" "neovim" "zoxide" "tmux" "zsh" )

if grep -qi 'debian' /etc/os-release; then
  sudo apt install "${to_install[@]}"
elif grep -qi 'fedora|centos|redhat' /etc/os-release; then
  sudo dnf install "${to_install[@]}"
fi



