let mapleader = ","


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


"make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

" Hide search highlighting
map <Leader>l <C-L>





map <Leader>tp :tabedit +PeepOpen<CR>

" save without reaching for :
map <Leader>w :w<CR>

" double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" maps to quickly find Unicode characters within the document 
map ,uni :match Error /[\x7f-\xff]/<CR> 
map ,uni2 /[^ -~]<CR>


nmap <Leader>vv :Vimrc<CR>
nmap <Leader>vd :Dotvim<CR>
nmap <Leader>vs :ReVimrc<CR>


nmap <Leader>ss :w<CR>:SpecFocused<CR>
nmap <Leader>sa :w<CR>:SpecFile<CR>
nmap <Leader>sl :w<CR>:SpecLast<CR>


" Reselect the visual area when changing indenting in visual mode.
vnoremap < <gv
vnoremap > >gv

" Removes doc lookup binding because it's easy to fat finger
nmap K k
vmap K k

" Use ; for : in normal and visual mode, less keystrokes
nnoremap ; :
vnoremap ; :

"
" Mappings for Plugins
"
" NERDTree FTW
map <leader>d :NERDTreeToggle<CR>
map <leader>h :NERDTreeFind<CR>


" rails.vim
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


" fugitive
nmap <Leader>gc :Gcommit<CR>
nmap <Leader>gw :Gwrite<CR>
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gp :Git push<CR>
 " Mnemonic, gu = Git Update
nmap <Leader>gu :Git pull<CR>
nmap <Leader>gd :Gdiff<CR>
" Exit a diff by closing the diff window
nmap <Leader>gx :wincmd h<CR>:q<CR>
