#!/bin/bash
# Reference: https://github.com/cboddy/dot-files/blob/master/vim.sh
# Installs .vimrc and plugins

# Vim
cp vim/.vimrc ~/.vimrc

# Vundle
git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim

# Install all plugins
vim +PluginInstall +qall

