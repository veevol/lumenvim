if exists("b:current_syntax")
    finish
endif

syntax keyword lumenTodo TODO FIXME BUG XXX contained
syntax match lumenComment /#.*/ contains=lumenTodo

syntax match lumenEscape /\\[nrt"'\\]/ display contained

syntax region lumenString start=/"/ skip=/\\"/ end=/"/ contains=lumenEscape
syntax region lumenString start=/'/ skip=/\\'/ end=/'/ contains=lumenEscape

syntax match lumenInt /[+-]\=[1-9][0-9_]*/ display
syntax match lumenInt /[+-]\=0/ display

syntax match lumenInt /0x[0-9A-Fa-f_]\+/ display
syntax match lumenInt /0o[0-7_]\+/ display
syntax match lumenInt /0b[01_]\+/ display

syntax match lumenFloat /[+-]\=[1-9][0-9_].[0-9_]\+/ display
syntax match lumenFloat /[+-]\=0.[0-9_]\+/ display

syntax match lumenFloat /[+-]\=[1-9][0-9_].[0-9_]\+e[0-9_]\+/ display
syntax match lumenFloat /[+-]\=0.[0-9]\+e[0-9_]\+/ display

syntax keyword lumenBool true false

syntax match lumenKey /[a-zA-Z_][a-zA-Z0-9-_]*/ display
syntax region lumenKey start=/`/ end=/`/

highlight link lumenTodo Todo
highlight link lumenComment Comment
highlight link lumenEscape SpecialChar
highlight link lumenString String
highlight link lumenInt Number
highlight link lumenFloat Float
highlight link lumenBool Boolean
highlight link lumenKey Identifier 

let b:current_syntax = "lumen"
