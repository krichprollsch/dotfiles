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

" coc
autocmd FileType json syntax match Comment +\/\/.\+$+

function! SetupCommandAbbrs(from, to)
	exec 'cnoreabbrev <expr> '.a:from
		\ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
		\ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction

" Use C to open coc config
call SetupCommandAbbrs('C', 'CocConfig')
