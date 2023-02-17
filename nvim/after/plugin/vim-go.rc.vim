let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_fmt_experimental = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_options = {
    \ 'gofmt': '-s',
    \ }
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet']
let g:go_metalinter_deadline = '5s'
let g:go_addtags_transform = 'camelcase'
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
