
syn match trapComment "//.*"
syn match trapString  "@\?\"[^\"]*\"" contains=trapId
syn match trapId      "#[0-9a-zA-Z_]\+"
syn match trapEq      "="
syn match trapStack   "\.\(push\|pop\)\>"

hi def link trapComment Comment
hi def link trapString  String
hi def link trapId      Function
hi def link trapEq      Keyword
hi def link trapStack   Keyword


