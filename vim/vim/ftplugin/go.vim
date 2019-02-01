
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

" use 4 space for tab
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

" metalinter
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_deadline = "5s"
let g:go_metalinter_autosave = 1

" use gd to jump to go definition
" and ctrl-t to go back

" use [[ and ]] to jump between func

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
autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

autocmd FileType go nmap <leader>t <Plug>(go-test)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
