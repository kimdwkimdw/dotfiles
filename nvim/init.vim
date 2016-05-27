call plug#begin('~/.vim/plugged')

Plug 'klen/python-mode'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Add plugins to &runtimepath
call plug#end()

" https://neovim.io/doc/user/vim_diff.html#vim-differences
set nu
set et
set clipboard+=unnamedplus
colors elflord

vmap <tab> >gv
vmap <s-tab> <gv

let g:pymode_options_max_line_length=120
let g:pymode_lint_options_pep8 =
	\ {'max_line_length': g:pymode_options_max_line_length}
