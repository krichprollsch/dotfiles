# Vim plugin Cheatsheet

## Vimdiff

* `do` get changes from other window into the current window
* `dp` put the changes from current window into the other window
* `]c` jump to the next change
* `[c` jump to the previous change
* `zo` open fold
* `zc` close fold
* `zr` reducing folding level
* `zm` one more folding level, please
* `:diffupdate`, `:diffu` recalculate the diff
* `:diffg RE` get from REMOTE
* `:diffg BA` get from BASE
* `:diffg LO` get from LOCAL

## ctrlp

* `,p` open ctrlp
* `<F5>` update files list
* `<c-f>`, `<c-b>` cycle between modes
* `<c-d>` filename only search
* `<c-r>` regexp mode
* `<c-j>`, `<c-k>` or the arrow keys to navigate the result list
* `<c-t>` or `<c-v>`, `<c-x>` to open the selected entry in a new tab or in a new split
* `<c-n>`, `<c-p>` select the next/previous string in the prompt's history
* `<c-y>` create a new file and its parent directories
* `<c-z>` to mark/unmark multiple files and `<c-o>` to open them

https://github.com/kien/ctrlp.vim

## Vim-Symfony

* `<c-x><c-u>` enable service id auto-completion

https://github.com/docteurklein/vim-symfony

## Ack

### usage

* `:Ack [options] {pattern} [{directories}]`

### keyboard shortcuts

* `o` to open (same as enter)
* `O` to open and close quickfix window
* `go` to preview file (open but maintain focus on ack.vim results)
* `t` to open in new tab
* `T` to open in new tab silently
* `h` to open in horizontal split
* `H` to open in horizontal split silently
* `v` to open in vertical split
* `gv` to open in vertical split silently
* `q` to close the quickfix window

https://github.com/mileszs/ack.vim

## Surround

* `cs"'` change `"abc"` to `'abc'`
* `cs"<em>` change `"abc"` to `<em>abc</em>`
* `ds"` change `"abc"` to `abc`
* `ysw]` while on `hello` change `hello world` to `[hello] world` (`w` is the selector)
* `yss)` wrap the entire line with parentheses


https://github.com/tpope/vim-surround

## php-cs-fixer

* `,pcf` fix current file
* `,pcd` fix current dir

https://github.com/beyondwords/vim-twig.git

## commentary

* `gcc` comment line
* `gcgc` remove comment

https://github.com/tpope/vim-commentary

## visual increment

* select numbers in cols with `^v` and press `^a` to increment or `5^a` to incr 5 by 5
* select letters in cols with `^v` and press `^x` to increment

https://github.com/triglav/vim-visual-increment

## abolish

* `:%Subvert/facilit{y,ies}/building{,s}/g`
* `:Subvert/child{,ren}/adult{,s}/g`

* `crs` replace `fooBar` to `foo_bar`
* `crm` replace to `FooBar`
* `crc` replace to `fooBar`
* `cru` replace to `FOO_BAR`


https://github.com/tpope/vim-abolish
