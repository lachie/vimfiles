
syntax on             " Enable syntax highlighting
"colorscheme jellybeans
"colorscheme Tomorrow-Night
"colorscheme Tomorrow-Night-Eighties
"colorscheme Tomorrow-Night-Bright
colorscheme zenburn

set background=dark

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

compiler ruby         " Enable compiler support for ruby


set nobackup
set noswapfile

set laststatus=2

set helplang=en

set ttymouse=xterm2

" yank etc goes onto system clipboard, too
if $TMUX == ''
  set clipboard+=unnamedplus
endif


set wildmenu
set wildmode=longest,list

" line numbers
set number
set relativenumber

" search
set hls
set incsearch


set autoread

set mouse=a
set ruler
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error

" case
set ignorecase
set smartcase

" encoding
set termencoding=utf-8
set fileencodings=ucs-bom,utf-8,default,latin1

"set cinoptions=:0,p0,t0
"set cinwords=if,else,while,do,for,switch,case

set formatoptions=tcqr

" indent
set shiftwidth=2
set tabstop=2
set autoindent
set cindent

" tabs
set expandtab
set nosmarttab

" folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default


" set indentkeys=0{,0},:,!^F,o,O,e

" use ack!
if executable("ack")
  set grepprg=ack\ -H\ --nogroup\ --nocolor
endif
" set grepformat=%f:%l:%m



let g:paste_keynote_tmp = $HOME."/tmp/convert_from_vim.html"
let g:paste_keynote_rb  = $HOME."/bin/paste_vim_to_keynote.rb"
