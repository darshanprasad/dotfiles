#!/bin/bash
# Written by Darshan Prasad
# Installs .vimrc and plugins

# Vim
cp vim/.vimrc ~/.vimrc

# Vundle
git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim

# Install all plugins
vim +PluginInstall +qall

