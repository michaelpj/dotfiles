#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>

autoload -U colors && colors

fpath=("${ZDOTDIR:-$HOME}/zfunctions" $fpath)

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

set -o vi

setopt CLOBBER

alias tmux='tmux -2'
alias em='emacsclient -nw --alternate-editor=""'
alias emw='emacsclient --alternate-editor=""'

# Report time for commands longer than 20s
REPORTTIME=20

# fasd aliases
alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias z='fasd_cd -d'     # cd, same functionality as j in autojump

# fuzzy select pid
alias pid="ps axww -o pid,user,%cpu,%mem,start,time,command | hs | sed 's/^ *//' | cut -f1 -d' '"

selectah() {
  OUTPUT=$(eval "$1" | hs --search "$3" | tr '\n' ' ') 
  if [ -n "$OUTPUT" ]
  then
    CMD="$2 $OUTPUT"
    print -s "$CMD"
    eval "$CMD"
  fi
}

[[ -f "${ZDOTDIR:-$HOME}/.zshrc.local" ]] && source "${ZDOTDIR:-$HOME}/.zshrc.local"
