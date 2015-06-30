setlocal foldmethod=expr
setlocal foldexpr=GetTIS100Fold(v:lnum)

function! GetTIS100Fold(lnum)
    if getline(a:lnum) =~? '\v\@[0-9]+$'
        return '>1'
    endif

    return '='
endfunction
