" rails.vim
command! RTblueprints exe ":find blueprints.rb"
command! RTroutes :RT config/routes.rb

" command! RTconfig :RTfind config
command! RTscripts :find app/scripts

command! RTgemfile :RTedit Gemfile
command! RTseeds  exe ":find db/seeds"


command! Vimrc :tabe ~/.vimrc
command! Dotvim :tabe ~/.vim
command! ReVimrc :so ~/.vimrc

command! -range=% PasteKeynote :call PasteToKeynote(<line1>, <line2>)

command! MarkdownPreview :call MarkdownPreview()

