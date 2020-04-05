execute pathogen#infect()
call pathogen#helptags()
syntax on
set number
filetype plugin indent on
" space
set smartindent
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4

" highlight search
set hlsearch
nnoremap <CR> :nohlsearch<CR><CR>

" <leader> is to press \ button by default
" <leader>ne is to press \ follow by n and e respectively.
nmap <leader>ne :NERDTreeFocus<cr>
nmap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>w <C-w>
nnoremap <leader>nw <C-w>
nnoremap <leader>gd :GoDoc<CR>
map <silent> <C-n> :NERDTreeToggle<CR>

" search file
nmap <leader>s /\c<left><left>
nmap <C-f> /\c<left><left>
" search and replace
vnoremap // y/<C-R>"\c<CR>
vnoremap <leader>s  y:%s/<C-R>"//gc<left><left><left>


" ale
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
nmap <leader>ff :ALEFix<CR>
let g:ale_linters = {'python':['flake8', 'pylint']}
let g:ale_fixers = {'javascript' : ['prettier', 'eslint'], 'python':['autopep8','isort','yapf'],'*':['remove_trailing_lines','trim_whitespace'],'json':['fixjson'],'go':['gofmt','goimports'],'yaml':['prettier'], 'yml':['prettier']}

" vim-closetag
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.js"

" matchTagAlways
let g:mta_filetypes = { 'javascript.jsx': 1, 'html' : 1, 'xhtml' : 1, 'xml' : 1,'jinja' : 1}

" nerdTree
let g:NERDTreeIgnore = ['^node_modules$']

" copy clipbaord
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP
