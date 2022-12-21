#!/usr/bin/env bash
_nvim_dot_config=${XDG_CONFIG_HOME:-$HOME/.config}/nvim

git clone https://github.com/kalebo/doom-nvim.git $_nvim_dot_config
GIT_DIR=$_nvim_dot_config/.git GIT_WORK_TREE=$_nvim_dot_config git checkout kalebo 
