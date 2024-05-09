execute pathogen#infect()
call pathogen#helptags()
syntax on
set number
set rnu
filetype plugin indent on
" space
set smartindent
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4

" Command - T Ignore directory
set wildignore+=node_modules
let g:CommandTTraverseSCM='pwd'


" highlight search
set hlsearch
nnoremap <CR> :nohlsearch<CR>:match<CR><CR>

" <leader> is to press \ button by default
" <leader>ne is to press \ follow by n and e respectively.
nmap <leader>ne :NERDTreeFocus<cr>
nmap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>w <C-w>
nnoremap <leader>nw <C-w>
nnoremap <leader>gd :GoDoc<CR>
nnoremap <leader>h :match StatusLineTerm /<C-R><C-W>/<CR>
map <silent> <C-n> :NERDTreeToggle<CR>
let NERDTreeAutoChangeDir=0
" map <silent> tt :term bash --login<CR>

" search file
nmap <leader>s /\c<left><left>
nmap <C-f> /\c<left><left>
" search and replace
vnoremap // y/<C-R>"\c<CR>N
vnoremap <leader>s  y:%s/<C-R>"//gc<left><left><left>


" ale
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
nmap <leader>ff :ALEFix<CR>
let g:ale_linters = {'python':['flake8', 'pylint'], 'go':['gofmt'],'typescript':['eslint']}
let g:ale_fixers = {'javascript' : ['prettier', 'eslint'], 'python':['autopep8','isort','yapf'],'json':['prettier','fixjson'],'go':['gofmt','goimports'],'yaml':['prettier'], 'yml':['prettier'],'typescript':['eslint'],'*':['prettier','remove_trailing_lines','trim_whitespace']}


" vim-closetag
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.js"

" matchTagAlways
let g:mta_filetypes = { 'javascript.jsx': 1, 'html' : 1, 'xhtml' : 1, 'xml' : 1,'jinja' : 1}

" nerdTree
let g:NERDTreeIgnore = ['^node_modules$']

" copy clipbaord
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gp
vnoremap <C-p> "+gP


set shell=/bin/bash
