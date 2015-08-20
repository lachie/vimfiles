set nocompatible
filetype on
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" base
Bundle "gmarik/vundle"

" UI
"Bundle "Lokaltog/vim-powerline"
Bundle "bling/vim-airline"
Bundle "nathanaelkane/vim-indent-guides"
Bundle "tomtom/quickfixsigns_vim"
Bundle 'nanotech/jellybeans.vim'

Bundle 'rking/ag.vim'

" git
Bundle "tpope/vim-fugitive"

" file nav
Bundle "scrooloose/nerdtree"
Bundle "kien/ctrlp.vim"
Bundle "mileszs/ack.vim"

" text nav
Bundle "edsono/vim-matchit"
Bundle 'tapichu/Align'
" Bundle "godlygeek/tabular"
Bundle "scrooloose/nerdcommenter"
Bundle "ervandew/supertab"

Bundle "mileszs/ack.vim"

" Bundle "kana/vim-textobj-user"
" Bundle "nelstrom/vim-textobj-rubyblock"
Bundle "tpope/vim-surround"

" XXX to try: Bundle "Shougo/neocomplcache"

" web
Bundle "skammer/vim-css-color"
"Bundle "tpope/vim-rails"
Bundle "tpope/vim-haml"

" language support
Bundle 'kchmck/vim-coffee-script'
" Bundle "groenewege/vim-less"
" Bundle "vim-scripts/VimClojure"
" Bundle "agrewal/vim-thrift"
Bundle "plasticboy/vim-markdown"
Bundle "ekalinin/Dockerfile.vim"
Bundle "ngmy/vim-rubocop"

Bundle "pangloss/vim-javascript"

" Bundle "vim-scripts/VimClojure"
Bundle "tpope/vim-fireplace"
Bundle "guns/vim-clojure-static"
Bundle "guns/vim-clojure-highlight"

" ruby aids
Bundle 'vimwiki'

filetype plugin indent on
