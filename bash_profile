export PATH="/usr/local/opt/ncurses/bin:$PATH"
export LC_ALL=en_US.UTF-8

[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"


export HISTSIZE=100000
export HISTFILESIZE=100000
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

. ~/Documents/Utility/aws/.init_env
. ~/Documents/Utility/kubernetes/init.sh

export PS1="\u:\W 🔥 > "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#export PATH="/usr/local/opt/node@10/bin:$PATH"
