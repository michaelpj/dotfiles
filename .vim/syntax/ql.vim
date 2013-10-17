
syn match  qlComment       "//.*"
syn region qlComment start="/\*" end="\*/"
syn match  qlString        "\"[^\"]*\""
syn match  qlImport        "\<import\>"
syn match  qlBraces        "[{}]"
syn match  qlPipe          "|"
syn match  qlEq            "="
syn match  qlDot           "\."
syn match  qlComma         ","
syn match  qlParens        "(\|)"
syn match  qlKeywords      "\v<(class|extends|from|where|and|select|instanceof|predicate)>"
syn match  qlKeywords      "\v<(abstract|cached|external|final|library|noopt|private)>"
syn match  qlConditional   "\v<(if|then|else)>"

hi def link qlComment     Comment
hi def link qlString      String
hi def link qlImport      Include
hi def link qlBraces      Keyword
hi def link qlPipe        Keyword
hi def link qlEq          Keyword
hi def link qlDot         Keyword
hi def link qlComma       Keyword
hi def link qlParens      Keyword
hi def link qlKeywords    Keyword
hi def link qlConditional Conditional


