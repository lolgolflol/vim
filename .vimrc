execute pathogen#infect()
call pathogen#helptags()
syntax on
set number

filetype plugin indent on
filetype plugin on

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
" search all directory
vnoremap <leader>df y:Ag -i <C-R>" ./
" command-t start search current directory
let g:CommandTTraverseSCM='pwd'

" ale config auto fixing javascript use prettier, eslint respectively
let g:ale_linters = {'python':['flake8', 'pylint']}
let g:ale_fixers = {'javascript' : ['prettier', 'eslint'], 'python':['autopep8','isort','yapf'],'*':['remove_trailing_lines','trim_whitespace'],'json':['fixjson'],'go':['gofmt','goimports'],'yaml':['prettier'], 'yml':['prettier'],'cpp':['clang-format','uncrustify'],'java':['google_java_format','uncrustify']}
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_python_flake8_executable = 'python3'
nmap <leader>ff :ALEFix<CR>

" quick search in file by selected word
vnoremap // y/<C-R>"\c<CR>
vnoremap <leader>s  y:%s/<C-R>"//gc<left><left><left>

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard
  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

" auto close [Scratch] [Preview]  after autocompletion
autocmd CompleteDone * pclose

" doing on the fly to arrange tab new line
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType yaml setlocal ts=2 sts=2 sw=2
autocmd FileType go setlocal ts=2 sts=2 sw=2
autocmd FileType * setlocal ts=2 sts=2 sw=2


" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Fold tag html, jsx
map <leader>c Vatzf

" syntactic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" matchTagAlways
let g:mta_filetypes = { 'javascript.jsx': 1, 'html' : 1, 'xhtml' : 1, 'xml' : 1,'jinja' : 1}

" vim-closetag
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.js"

set runtimepath^=~/.vim/bundle/ag
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

set backspace=indent,eol,start
let g:terraform_fmt_on_save=1

let vim_markdown_preview_github=1

let g:NERDTreeIgnore = ['^node_modules$']
