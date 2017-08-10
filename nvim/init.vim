call plug#begin('~/.config/nvim/plugged')

Plug 'python-mode/python-mode', { 'branch': 'master'}

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }


Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Go Language
Plug 'fatih/vim-go'

" Vue.js
Plug 'posva/vim-vue'

" vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

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
let g:pymode_lint_checkers = ['pylint', 'pyflakes', 'pep8', 'mccabe']

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-Right>"
let g:UltiSnipsJumpForwardTrigger="<c-Down>"
let g:UltiSnipsJumpBackwardTrigger="<c-Up>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" Airline
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
