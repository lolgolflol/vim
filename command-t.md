# Search by filename
## Command-t
```bash
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

\ <space>   open the selected file in preview window

```

#How to solve Commond-T is not compatible ruby version

Step 1. check version ruby in vim use (vim --version)
Step 2. check default version ruby in terminal (ruby -v)
Step 3. check how you install vim in your notebook (such as brew, manaul)
Step 4. change your default version ruby to version ruby on vim and install command-t where "ruby .vim/bundle/command-t/ruby/command-t/ext/command-t/extconf.rb" and make
