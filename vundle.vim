set nocompatible
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

" git
Bundle "tpope/vim-fugitive"

" file nav
Bundle "scrooloose/nerdtree"

" text nav
Bundle "edsono/vim-matchit"
Bundle 'tapichu/Align'
Bundle "scrooloose/nerdcommenter"
Bundle "ervandew/supertab"

Bundle "kana/vim-textobj-user"
Bundle "nelstrom/vim-textobj-rubyblock"

" XXX to try: Bundle "Shougo/neocomplcache"

" web
Bundle "skammer/vim-css-color"
Bundle "tpope/vim-rails"

" language support
Bundle 'kchmck/vim-coffee-script'
Bundle "jeroenbourgois/vim-actionscript"

Bundle 'vimwiki'

filetype plugin indent on
