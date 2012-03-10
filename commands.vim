" rails.vim
command! RTblueprints exe ":RTfind blueprints.rb"
command! RTroutes :RTedit config/routes.rb

" command! RTconfig :RTfind config
command! RTscripts :RTfind app/scripts

command! RTgemfile :RTedit Gemfile
command! RTseeds  exe ":RTfind db/seeds"


command! Vimrc :tabe ~/.vimrc
command! Dotvim :tabe ~/.vim
command! ReVimrc :so ~/.vimrc

command! -range=% PasteKeynote :call PasteToKeynote(<line1>, <line2>)

command! MarkdownPreview :call MarkdownPreview()

