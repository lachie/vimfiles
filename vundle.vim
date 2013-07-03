set nocompatible
filetype on
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" base
Bundle "gmarik/vundle"

" UI
Bundle "Lokaltog/vim-powerline"
Bundle "nathanaelkane/vim-indent-guides"
Bundle "tomtom/quickfixsigns_vim"
Bundle 'nanotech/jellybeans.vim'


" git
Bundle "tpope/vim-fugitive"

" file nav
Bundle "scrooloose/nerdtree"
Bundle "kien/ctrlp.vim"
	

" text nav
Bundle "edsono/vim-matchit"
Bundle 'tapichu/Align'
" Bundle "godlygeek/tabular"
Bundle "scrooloose/nerdcommenter"
Bundle "ervandew/supertab"

" Bundle "kana/vim-textobj-user"
" Bundle "nelstrom/vim-textobj-rubyblock"
Bundle "tpope/vim-surround"

" XXX to try: Bundle "Shougo/neocomplcache"

" web
Bundle "skammer/vim-css-color"
Bundle "tpope/vim-rails"

" language support
Bundle 'kchmck/vim-coffee-script'
" Bundle "groenewege/vim-less"
" Bundle "vim-scripts/VimClojure"
" Bundle "agrewal/vim-thrift"

" ruby aids
Bundle 'vimwiki'

filetype plugin indent on
