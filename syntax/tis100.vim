if exists("b:current_syntax")
    finish
endif

syntax keyword tisInstruction NOP MOV SWP SAV ADD SUB NEG
syntax keyword tisInstruction JMP JEZ JNZ JGZ JLZ JRO skipwhite nextgroup=tisDestLabel

syntax keyword tisRegister ACC NIL

syntax keyword tisPort LEFT RIGHT UP DOWN ANY LAST

syntax match tisNode "\v^\@[0-9]0?$"

syntax match tisLiteral "\v-?[0-9]+"

syntax match tisComment "\v#.*$"

syntax match tisLabel "\v[A-Z]+:"
syntax match tisDestLabel "\v[A-Z]+" contained

syntax match tisBreakpoint "\v^!.*$"

highlight link tisInstruction Keyword
highlight link tisRegister Identifier
highlight link tisPort Identifier
highlight link tisLiteral Number
highlight link tisLabel PreProc
highlight link tisDestLabel PreProc
highlight link tisComment Comment
highlight link tisNode SpecialComment
highlight link tisBreakpoint Debug


let b:current_syntax = "tis100"

