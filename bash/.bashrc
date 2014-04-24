
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
alias resetaudio="sudo kill `ps -ax | grep 'coreaudiod' | grep 'sbin' |awk '{print $1}'`"

alias mou="open /Applications/Mou.app"

cdd () {
  cd "$1"
  clear
  pwd
  ls -a
}
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
