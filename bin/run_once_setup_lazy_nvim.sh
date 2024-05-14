#!/usr/bin/env bash
_nvim_dot_config=${XDG_CONFIG_HOME:-$HOME/.config}/nvim

if [ ! -d "$_nvim_dot_config" ]; then
  git clone git@github.com:kalebo/lazyvim.git $_nvim_dot_config
fi 
