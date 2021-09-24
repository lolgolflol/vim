# vim
Vim plugin ที่ควรลง และ set .vimc withy https://github.com/tpope/vim-pathogen

# Manual install vim version
https://github.com/ycm-core/YouCompleteMe/wiki/Building-Vim-from-source

## Plugin

```bash
MatchTagAlways
YouCompleteMe
ack.vim
ale
auto-pairs
command-t
nerdcommenter
nerdtree
nerdtree-git-plugin
quickr-preview.vim
typescript-vim
vim-closetag
vim-fugitive
vim-go
vim-gocode
vim-javascript
vim-jsx
vim-markdown-preview
vim-prettier
vim-terraform
```

### command-t
```
check version ruby support current vim
:ruby puts RUBY_VERSION
use ruby version which build vim, it should check /usr/local/opt/ruby/bin/ruby -v  which it should be the same :ruby puts RUBY_VERSION 
cd ~/.vim/bundle/command-t/ruby/command-t/ext/command-t
/usr/local/opt/ruby/bin/ruby extconf.rb
  make
```

## .vimrc
```bash
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
let g:ale_linters = {'python':['flake8', 'pylint']}
let g:ale_fixers = {'javascript' : ['prettier', 'eslint'], 'python':['autopep8','isort','yapf'],'json':['prettier','fixjson'],'go':['gofmt','goimports'],'yaml':['prettier'], 'yml':['prettier'],'*':['prettier','remove_trailing_lines','trim_whitespace']}


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



```

## Frequently used commands in plugin
```bash
###############
# Command-T
###############
#To type after being in vim editor for call command-t console.
\t  

# to use in a command-t console.
# <CR> is Enter button by default
<CR>        open the selected file 

<C-s>       open the selected file in a new split window
<C-v>       open the selected file in a new vertical split window
<C-t>       open the selected file in a new tab
<C-d>       delete the selected buffer

<C-j>       select next file in the file listing
<C-n>       select next file in the file listing

<C-k>       select previous file in the file listing
<C-p>       select previous file in the file listing

<C-f>       flush the cache (see |:CommandTFlush| for details)
<C-q>       place the current matches in the quickfix window
<C-c>       cancel (dismisses file listing)

########################
# Auto-Complete-Function
########################
<Tab>       Next function is recommended
<C-n>       Next function is recommended
<C-p>       Previous function is recommend

#ps. don't press enter after select function, you just type continually.

##############
# Fold funciton
##############
zc — close the fold (where your cursor is positioned)
zM —close all folds on current buffer
zo — open the fold (where your cursor is positioned)
zR — open all folds on current buffer
zj — cursor is moved to next fold
zk — cursor is moved to previous fold
```

## Search text in folder
```bash
:grep -F <what word you want to search> ./**/*
# you will see (Press ENTER or type command to continue), to type the command below.
:copen # for open explorer files matching.
:cclose # for close console.
```

## Open history commands we use.
```bash
q: #open history comand console
# to use (j,k) instand of arrow key
j # preview command
k # next command
```
