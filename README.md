# vim
Vim plugin ที่ควรลง และ set .vimc withy https://github.com/tpope/vim-pathogen

## Plugin

```bash
YouCompleteMe                         # auto complete function
command-t or ctrlp.vim                # to search find quickly
nerdcommenter                         # command code
nerdtree                              # explorer files
quickr-preview.vim                    # comment-t open preview
ale                                   # tag alert unused variable
```


## .vimc
```bash
execute pathogen#infect()
syntax on
set number
filetype plugin indent on

" <leader> is to press \ button by default
" <leader>ne is to press \ follow by n and e respectively.
nmap <leader>ne :NERDTreeFocus<cr>
nmap <leader>nf :NERDTreeFind<CR>
map <silent> <C-n> :NERDTreeToggle<CR>

" command-t start search current directory
let g:CommandTTraverseSCM='pwd'
" ale config auto fixing javascript use prettier, eslint respectively
let g:ale_fixers = {'javascript' : ['prettier', 'eslint']}
let g:ale_fix_on_save = 1

" quick search in file by selected word
vnoremap // y/<C-R>"<CR>

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
