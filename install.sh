#!/bin/bash

if ! [ -d ~/.vim/bundle/vundle ]
then
  git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

ln -sf ~/.vim/vimrc ~/.vimrc
ln -sf ~/.vim/gvimrc ~/.gvimrc
