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
Bundle "Rykka/ColorV"
Bundle "tomtom/quickfixsigns_vim"
Bundle 'nanotech/jellybeans.vim'

" git
Bundle "tpope/vim-fugitive"

" file nav
Bundle "scrooloose/nerdtree"
" XXX to try, LustyJuggler

" text nav
Bundle "edsono/vim-matchit"
Bundle 'tapichu/Align'
Bundle "scrooloose/nerdcommenter"
Bundle "ervandew/supertab"

Bundle "kana/vim-textobj-user"
Bundle "nelstrom/vim-textobj-rubyblock"
Bundle "tpope/vim-surround"

" XXX to try: Bundle "Shougo/neocomplcache"

" web
Bundle "skammer/vim-css-color"
Bundle "tpope/vim-rails"

" language support
Bundle 'kchmck/vim-coffee-script'
Bundle "jeroenbourgois/vim-actionscript"
Bundle "groenewege/vim-less"
Bundle "vim-scripts/VimClojure"

Bundle 'vimwiki'

filetype plugin indent on
