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