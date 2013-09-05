
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export MARKPATH=$HOME/.marks
function jump { 
    cd -P $MARKPATH/$1 2>/dev/null || echo "No such mark: $1"
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

alias ..='cd ..'
alias ...='cd ../..'

cdd () {
  cd "$1"
  clear
  pwd
  ls -a
}