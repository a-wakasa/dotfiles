#!/bin/sh

here=$(cd $(dirname $0); pwd)
. ${here}/settings.sh

[ -d ~/.vim/bundle ] && makedir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
