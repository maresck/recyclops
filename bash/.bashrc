
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export MARKPATH=$HOME/.marks
function jump {
    cd -P $MARKPATH/$1 2>/dev/null || echo "No such mark: $1"
    cdd
}
function mark {
    mkdir -p $MARKPATH; ln -s $(pwd) $MARKPATH/$1
}
function unmark {
    rm -i $MARKPATH/$1
}
function marks {
    ls -l $MARKPATH | sed 's/  / /g' | cut -d' ' -f9- && echo
}

alias ..='cdd ..'
alias ...='cdd ../..'

alias mou="open /Applications/Mou.app"

cdd () {
  cd "$1"
  clear
  pwd
  ls -a
}
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad
export PS1="\n\[\e[30;47m\]\u @ \h  ::  \[\e[30;47;1m\]\w\[\e[30;47m\] ------------\n\$\[\e[0m\] "
