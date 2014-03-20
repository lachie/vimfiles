" autocmd FileType make     set noexpandtab
autocmd FileType coffee     set expandtab

au BufNewFile,BufRead *.fish setf fish
au BufRead,BufNewFile *.scss set filetype=scss
au BufNewFile,BufRead *.bats set filetype=sh


autocmd User Rails silent! Rnavcommand coffee app/scripts -glob=**/* -suffix=.coffee -default=model()
autocmd User Rails silent! Rnavcommand eg examples -glob=**/* -suffix=.eg.rb -default=model()
autocmd User Rails silent! Rnavcommand cfg config -glob=**/* -suffix=
autocmd User Rails silent! Rnavcommand cell app/cells -glob=**/* -suffix=_cell.rb -default=model()


autocmd FileType vim map <leader>ban I"<Del>  <Esc>A  "<Del><Esc>yyp0lv$hhr"yykPjj
autocmd FileType javascript,php,c map <leader>ban I//  <Esc>A  //<Esc>yyp0llv$hhhr-yykPjj
autocmd FileType python,ruby,sh,zsh,coffee map <leader>ban I#  <Esc>A  #<Esc>yyp^v$hhr#yykPjjo<BS><Esc>
autocmd FileType css map <leader>ban I/*  <Esc>A  */<Esc>yyp0llv$r-$hc$*/<Esc>yykPjj
