" indent guide
let g:indent_guides_enable_on_vim_startup=1

let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#a6a6a6
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#6e6e6e

hi IndentGuidesOdd  guibg=#a6a6a6
hi IndentGuidesEven guibg=#6e6e6e

" nerdtree
let NERDTreeQuitOnOpen=1

" nerdcommenter

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 0


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

" slime
let g:slime_target = "tmux"

" clj
let vimclojure#HighlightBuiltins=1      " Highlight Clojure's builtins
let vimclojure#ParenRainbow=1           " Rainbow parentheses'!

" ctrlp
let g:ctrlp_custom_ignore = {
\ 'dir': '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp\|vendor/bundled$'
\ }


let g:go_fmt_commands = 0
" let g:go_fmt_commands = 0

" Ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
