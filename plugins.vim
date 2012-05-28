" indent guide
let g:indent_guides_enable_on_vim_startup=1

" nerdtree
let NERDTreeQuitOnOpen=1

" taglist
let Tlist_Ctags_Cmd="/Users/lachie/homebrew/bin/ctags"


" vimwiki
let wiki_1 = {}
let wiki_1.path = '~/Dropbox/Sync/vimwiki/'

let g:vimwiki_list = [wiki_1]


" powerline
let g:Powerline_symbols = 'fancy'


" jellybeans tweaks
hi Todo guifg=#FF4500 guibg=#CCCC4B


" gist copy to clipboard
let g:gist_clip_command = 'pbcopy'
