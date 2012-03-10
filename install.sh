#!/bin/bash

if ! [ -d ~/.vim/bundle/vundle ]
then
  git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

ln -sf ~/.vim/vimrc ~/.vimrc
ln -sf ~/.vim/gvimrc ~/.gvimrc

# mac only
open fonts/Inconsolata-dz-Powerline.otf

# XXX not working for me
#vim -N -u ~/.vimrc -es - <<-VIM
#BundleInstall!
#BundleClean
#q
#VIM
