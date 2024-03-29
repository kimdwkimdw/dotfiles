call plug#begin('~/.config/nvim/plugged')

Plug 'python-mode/python-mode', { 'tag': '0.13.0'}

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }


" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

" Track the engine.
" Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Go Language
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Vue.js
Plug 'posva/vim-vue'

" vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'leafgarland/typescript-vim'

Plug 'nvim-lua/plenary.nvim'

" Add plugins to &runtimepath
call plug#end()

" https://neovim.io/doc/user/vim_diff.html#vim-differences
set nu
set et
set clipboard+=unnamedplus
set autoindent

colors elflord


vmap <tab> >gv
vmap <s-tab> <gv


let g:python_host_prog="/usr/local/bin/python2"
let g:python3_host_prog="/usr/local/bin/python3"

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

" fzf
set rtp+=/usr/local/opt/fzf
set belloff=all

" Basic
set et
set ts=4
set sw=4
