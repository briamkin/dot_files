#.bash_profile / .bashrcX

export PATH=/usr/local/bin:/usr/local/share/python:$PATH
export VISUAL=nano
export EDITOR="$VISUAL"
#Changing Prompt
PS1='[\t] bk: '

#Shortcuts for Python

alias py='python'
alias ip='ipython notebook --profile=briamkin'
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias ghost='cd Projects/ghost/ghost-beta; npm start'

function gen() {
cd Projects/ghost/briank.im/
buster generate --domain=http://127.0.0.1:2368
cd static
git add .
git commit -m "$1"
git push
open -a Google\ Chrome http://briank.im	
cd ~
}
