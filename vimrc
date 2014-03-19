if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim

set nocompatible      " We're running Vim, not Vi!

filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

let g:gofmt_command='goimports'
autocmd FileType go autocmd BufWritePre <buffer> Fmt

source $HOME/.vim/vundle.vim
source $HOME/.vim/global.vim
source $HOME/.vim/functions.vim
source $HOME/.vim/plugins.vim
source $HOME/.vim/commands.vim
source $HOME/.vim/autocmds.vim
source $HOME/.vim/maps.vim


let &cpo=s:cpo_save
unlet s:cpo_save



" vim: set ft=vim :
