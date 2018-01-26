set tabstop=4 expandtab shiftwidth=4 softtabstop=4
autocmd BufWritePre * StripWhitespace

" Python-mode
" Disable rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 0
"let g:pymode_doc = 1
"let g:pymode_doc_key = 'K'

" Linting
let g:pymode_lint = 0
"let g:pymode_lint = 1
"let g:pymode_lint_checker = "pyflakes,pep8,pylint"
" Auto check on save
let g:pymode_lint_write = 0
"let g:pymode_lint_write = 1

" Whitespace
let g:pymode_trim_whitespaces = 1
let g:pymode_indent = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

" Set Max Line Length
let g:pymode_options_max_line_length = 120
let g:pymode_options_colorcolumn = 1
"set colorcolumn = 120
