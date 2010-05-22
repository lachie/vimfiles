syn keyword fishKeyword function
syn keyword fishConditional switch if then elsif else end
syn keyword fishLabel case
syn match fishComment /#.*/

syn region fishSingleQuote start=/'/ end=/'/
syn region fishDoubleQuote start=/"/ skip=/\\"/ end=/"/


hi def link fishSingleQuote fishString
hi def link fishDoubleQuote fishString

hi def link fishKeyword Keyword
hi def link fishConditional Conditional
hi def link fishLabel Label
hi def link fishComment Comment
hi def link fishString String
