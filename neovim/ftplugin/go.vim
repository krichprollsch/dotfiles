
" go
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"

" syntax highlight
" see https://github.com/fatih/vim-go-tutorial#beautify-it
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 0
let g:go_highlight_extra_types = 1

" highlight matching ids
let g:go_auto_sameids = 1

" use 4 space for tab
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

" metalinter
let g:go_metalinter_enabled = ['govet', 'errcheck', 'deadcode', 'ineffassign', 'structcheck', 'unused', 'varcheck', 'gosimple', 'staticcheck']
let g:go_metalinter_autosave_enabled = ['errcheck', 'deadcode', 'ineffassign', 'structcheck', 'varcheck']
let g:go_metalinter_deadline = "5s"
let g:go_jump_to_error = 0
let g:go_metalinter_autosave = 1
let g:go_metalinter_command='golangci-lint'

" use gopls for :GoDef
let g:go_def_mode='gopls'
" use gopls for :GoInfo
let g:go_info_mode='gopls'

" use gd to jump to go definition
" and ctrl-t to go back

" use [[ and ]] to jump between func

" use K to open the doc

" if means in func
" af mean all func
" so daf delete all the func
" and vif select the body of the func
" see https://github.com/fatih/vim-go-tutorial#text-objects

" run :GoBuild or :GoTestCompile based on the go file
" see https://github.com/fatih/vim-go-tutorial#vimrc-improvements-1
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
nmap <leader>t <Plug>(go-test)
nmap <Leader>c <Plug>(go-coverage-toggle)
nmap <Leader>i <Plug>(go-info)
nmap <Leader>l <Plug>(go-lint)
