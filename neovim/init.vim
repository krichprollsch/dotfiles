"
" vim conf - Pierre Tachoire
" inspired by Vincent Jousse

set nocompatible	" remove vi compat
set title		" update term title
"set number		" add line number
set ruler		" show cursor pos
"set wrap
set scrolloff=3		" lines around scroll
set ignorecase		" search ignore case
set smartcase		" search case sensitive if caps char used
set incsearch		" highlight search results while typing
set hlsearch		" highlight search results
set visualbell		" remove beeps
set noerrorbells	" remove beeps
set hidden		" hide file while opening other files
set nobackup
set nowritebackup
set noswapfile

 " backspace as usual
 set backspace=indent,eol,start

 syntax enable
 set background=dark

filetype on
" ~/.config/nvim/ftplugin
filetype plugin on
filetype indent on

highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn=join(range(81,81),",")

" make plugins smoother
set lazyredraw

let mapleader = ","

" disable parent hightlight
let g:loaded_matchparen= 0

" always replace all occurences of a line
set gdefault

" Desactiver les touches directionnelles
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Tabs and indentation
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

autocmd FileType cucumber   setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType less       setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css        setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType js         setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType yml        setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType toml       setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType features   setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType json       setlocal shiftwidth=2 tabstop=2 softtabstop=2

" fzf
let g:fzf_history_dir = '~/.local/share/fzf-history'
nnoremap <silent> <c-p> :FZF<CR>

" sudo to write
command W w !sudo tee % > /dev/null

" http://vim.wikia.com/wiki/Toggle_auto-indenting_for_code_paste
" F2 = toggle paste mode
nnoremap <F2> :set invpaste paste?<Enter>
imap <F2> <C-O><F2>
set pastetoggle=<F2>

" automatically strip trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" jplug
source ~/.config/nvim/bundles.vim

" nerdtree
nmap <F7> :NERDTreeToggle<CR>

" automatically strip trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

"use <tab> for completion
function! TabWrap()
    if pumvisible()
        return "\<C-N>"
    else
        return "\<tab>"
    endif
endfunction

" power tab
imap <silent><expr><tab> TabWrap()

" json
autocmd FileType json syntax match Comment +\/\/.\+$+

" coc
" see https://octetz.com/docs/2019/2019-04-24-vim-as-a-go-ide/
"
" if hidden is not set, TextEdit might fail.
set hidden
" Better display for messages
set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use U to show documentation in preview window
nnoremap <silent> U :call <SID>show_documentation()<CR>

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
