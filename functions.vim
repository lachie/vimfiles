
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


func! SpinPush(...)
  let filename = expand("%:p")
  let cmd = "bundle exec spin push " . shellescape(l:filename)

  " add line if requested
  if a:0 == 1 && a:1 ==? "focused"
     let cmd = cmd . ':' . line('.')
  endif

  " chdir to rails root if possible - probably redundant
  let rr = RailsRoot()
  if len(rr) > 0
    let cmd = "cd " . rr . " && " . cmd
  endif

  " wrap in a rbenv subshell
  " TODO get ruby version from somewhere sensible
  let cmd = "rbenv shell 1.9.3-p125 && " . cmd

  let cmd = cmd . " 2>&1"

  echom "pushing: " . cmd
  let output = system(cmd)
  echom "output: " . output
  echom "returned: " . v:shell_error
endfunc
