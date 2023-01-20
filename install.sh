#!/bin/bash

BASEDIR=/home/julian/.dotfiles

# bash
ln -sf ${BASEDIR}/.bashrc ~/.bashrc
ln -sf ${BASEDIR}/.bash_aliases ~/.bash_aliases

# starship
mkdir -p ~/.config
ln -sf ${BASEDIR}/starship.toml ~/.config/.starship.toml

# git
ln -sf ${BASEDIR}/.gitconfig ~/.gitconfig

# nvim
mkdir -p ~/.config/nvim
mkdir -p ~/.config/nvim/lua/julian
ln -sf ${BASEDIR}/nvim/init.lua ~/.config/nvim/init.lua
ln -sf ${BASEDIR}/nvim/lua/julian/* ~/.config/nvim/lua/julian/

# tmux
ln -sf ${BASEDIR}/.tmux.conf ~/.tmux.conf

