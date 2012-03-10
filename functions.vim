
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



func! MarkdownPreview()
  exe "w"
  let ignorey = system($HOME . "/.vim/bin/markdown_preview.rb " . getreg("%") )
  echo ignorey
endfunc

