if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim

set nocompatible      " We're running Vim, not Vi!

" pathogen.vim replaces normal ~/.vim mess
filetype off 
set shell=/bin/bash
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()


syntax on             " Enable syntax highlighting

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

compiler ruby         " Enable compiler support for ruby

if has("gui_running")
  set guifont=Inconsolata:h14
  set guioptions-=T
endif


" not sure what these all do :P
imap <M-Down> }
inoremap <D-Down> <C-End>
imap <M-Up> {
inoremap <D-Up> <C-Home>
noremap! <M-Right> <C-Right>
noremap! <D-Right> <End>
noremap! <M-Left> <C-Left>
noremap! <D-Left> <Home>
map! <D-v> *
nmap gx <Plug>NetrwBrowseX
map <M-Down> }
noremap <D-Down> <C-End>
map <M-Up> {
noremap <D-Up> <C-Home>
noremap <M-Right> <C-Right>
noremap <D-Right> <End>
noremap <M-Left> <C-Left>
noremap <D-Left> <Home>
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
vmap <BS> "-d
vmap <D-x> "*d
vmap <D-c> "*y
vmap <D-v> "-d"*P
nmap <D-v> "*P


" stop arrow keys working in insert mode!
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>

inoremap jj <Esc>



let mapleader = ","

set helplang=en

" yank etc goes onto system clipboard, too
set clipboard+=unnamed

set wildmenu
set wildmode=longest,list

" line numbers
set number

" highlighted search
set hls

"make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

" Hide search highlighting
map <Leader>l <C-L>


syntax on
colorscheme desert

set autoread

set mouse=a
set background=dark
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


" autocmd FileType make     set noexpandtab

au BufNewFile,BufRead *.fish setf fish
au BufRead,BufNewFile *.scss set filetype=scss


" NERDTree FTW
map <leader>d :NERDTreeToggle<CR>
map <leader>h :NERDTreeFind<CR>

let NERDTreeQuitOnOpen=1

" taglist
let Tlist_Ctags_Cmd="/Users/lachie/homebrew/bin/ctags"

" rails.vim
command! RTblueprints exe ":RTfind blueprints.rb"
command! RTroutes :RTedit config/routes.rb
command! RTconfig exe ":RTfind config"
command! RTgemfile :RTedit Gemfile
command! RTseeds  exe ":RTfind db/seeds"


" Leader shortcuts for Rails commands
map <Leader>i :Rintegrationtest 
map <Leader>hh :Rhelper 
map <Leader>m :RTmodel 
map <Leader>c :RTcontroller 
map <Leader>v :RTview 
map <Leader>u :RTunittest 
map <Leader>f :RTfunctionaltest 
map <Leader>sm :RSmodel 
map <Leader>sc :RScontroller 
map <Leader>sv :RSview 
map <Leader>su :RSunittest 
map <Leader>sf :RSfunctionaltest 
map <Leader>si :RSintegrationtest 

map <Leader>tp :tabedit +PeepOpen<CR>

" save without reaching for :
map <Leader>w :w<CR>



" tab autocomplete
"function! InsertTabWrapper()
  "let col = col('.') - 1
  "if !col || getline('.')[col - 1] !~ '\k'
    "return "\<tab>"     
  "else
    "return "\<c-p>"
  "endif
"endfunction
"inoremap <tab> <c-r>=InsertTabWrapper()<cr>

let g:paste_keynote_tmp = $HOME."/tmp/convert_from_vim.html"
let g:paste_keynote_rb  = $HOME."/bin/paste_vim_to_keynote.rb"


command! Vimrc :tabe ~/.vimrc
command! Dotvim :tabe ~/.vim
command! ReVimrc :so ~/.vimrc


autocmd FileType vim map <leader>ban I"<Del>  <Esc>A  "<Del><Esc>yyp0lv$hhr"yykPjj
autocmd FileType javascript,php,c map <leader>ban I//  <Esc>A  //<Esc>yyp0llv$hhhr-yykPjj
autocmd FileType python,ruby,sh,zsh map <leader>ban I#  <Esc>A  #<Esc>yyp^v$hhr#yykPjjo<BS><Esc>
autocmd FileType css map <leader>ban I/*  <Esc>A  */<Esc>yyp0llv$r-$hc$*/<Esc>yykPjj


command! -range=% PasteKeynote :call PasteToKeynote(<line1>, <line2>)

func! PasteToKeynote(line1, line2)
  if a:line2 >= a:line1
    let g:html_start_line = a:line1
    let g:html_end_line = a:line2
  else
    let g:html_start_line = a:line2
    let g:html_end_line = a:line1
  endif

  let g:html_use_css = 1
  let x=&number
  se nonumber


  runtime syntax/2html.vim

  unlet g:html_start_line
  unlet g:html_end_line
  unlet g:html_use_css


  exe "wq!" g:paste_keynote_tmp
  let ignorey = system(g:paste_keynote_rb . " " . g:paste_keynote_tmp)

  let &number=x
endfunc


command! MarkdownPreview :call MarkdownPreview()

func! MarkdownPreview()
  exe "w"
  let ignorey = system($HOME . "/.vim/bin/markdown_preview.rb " . getreg("%") )
  echo ignorey
endfunc


let &cpo=s:cpo_save
unlet s:cpo_save



" vim: set ft=vim :
