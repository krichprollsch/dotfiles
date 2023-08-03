" My plugins
"
" This is using vim-plug (https://github.com/junegunn/vim-plug)

call plug#begin('~/.local/share/nvim/plugged')

" Utils {
    Plug 'mileszs/ack.vim'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-commentary'

" } Prog {
    Plug 'scrooloose/nerdcommenter'
    Plug 'stephenmckinney/vim-autotag'
    "Plug 'airblade/vim-gitgutter'
    "Plug 'scrooloose/nerdtree-git-plugin'

" } completion {
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

" } Go {
    Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
    Plug 'AndrewRadev/splitjoin.vim'

" } Rust {
    Plug 'rust-lang/rust.vim'

" } Zig {
    Plug 'ziglang/zig.vim'

" } DB {
    Plug 'kezhenxu94/vim-mysql-plugin'

" } Misc {
    Plug 'tpope/vim-markdown'

" } General {
    Plug 'scrooloose/nerdtree'
    Plug 'altercation/vim-colors-solarized'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'mbbill/undotree'
    Plug 'tpope/vim-abolish'
    Plug 'tpope/vim-fugitive'
    Plug 'sheerun/vim-polyglot'
    Plug 'itchyny/lightline.vim'
" }

call plug#end()
