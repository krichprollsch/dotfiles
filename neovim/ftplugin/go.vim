
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
"let g:go_auto_sameids = 1

" use 4 space for tab
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

" debug
"let g:go_debug = ['shell-commands', 'lsp']
" metalinter
let g:go_jump_to_error = 0
let g:go_metalinter_autosave = 1
let g:go_metalinter_deadline = '10s'

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

" only one gopls
" see https://github.com/fatih/vim-go/issues/2760#issuecomment-596074572
let g:go_gopls_enabled = 1
let g:go_gopls_options = ['-remote=auto']
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_referrers_mode = 'gopls'
