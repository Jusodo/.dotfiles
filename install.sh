#!/bin/bash

BASEDIR=/home/julian/.dotfiles

# bash
ln -sf ${BASEDIR}/.bashrc ~/.bashrc
ln -sf ${BASEDIR}/.bash_aliases ~/.bash_aliases

# git
ln -sf ${BASEDIR}/.gitconfig ~/.gitconfig