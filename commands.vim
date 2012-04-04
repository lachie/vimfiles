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


command! -range=% PrettifyJson :<line1>,<line2>!ruby -rubygems -e'gem "yajl-ruby"; require "yajl"; Yajl::Encoder.encode Yajl::Parser.parse($stdin), $stdout, :pretty => true'

command! -range=% JsToCoffee :<line1>,<line2>!js2coffee
