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

" } General {
    Plug 'scrooloose/nerdtree'
    Plug 'altercation/vim-colors-solarized'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'mbbill/undotree'
    Plug 'tpope/vim-abolish'
    Plug 'tpope/vim-fugitive'
    Plug 'sheerun/vim-polyglot'
    Plug 'itchyny/lightline.vim'

" } Prog {
    Plug 'scrooloose/nerdcommenter'
    Plug 'stephenmckinney/vim-autotag'
    "Plug 'airblade/vim-gitgutter'
    Plug 'scrooloose/nerdtree-git-plugin'

" } completion {
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" } Go {
    Plug 'fatih/vim-go'
    Plug 'AndrewRadev/splitjoin.vim'

" } Misc {
    Plug 'tpope/vim-markdown'
" }

call plug#end()
