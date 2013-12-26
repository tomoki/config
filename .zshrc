autoload -U compinit
compinit
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

setopt hist_ignore_dups
setopt share_history
setopt auto_cd
setopt auto_pushd
setopt correct
setopt list_packed
setopt list_types
setopt nolistbeep

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
bindkey -e
PROMPT="%m:%n%% "
RPROMPT="[%~]"
SPROMPT="correct: %R -> %r ? "

REPORTTIME=1

alias gpp="g++ -std=c++11 -Wall -O2"
alias ls="ls --color=auto"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -l -a"
alias u="cd .."
alias uu="cd ../.."
alias uuu="cd ../../.."
alias tmux="tmux -u"

# OPAM configuration
. /home/tomoki/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

isemacs(){
    [[ "$EMACS" != "" ]] && return 0
    return 1
}

# Attache tmux
if ( ! isemacs ) && ( ! test $TMUX ) && ( ! expr $TERM : "^screen" > /dev/null ) && which tmux > /dev/null; then
    if ( tmux has-session ); then
        session=`tmux list-sessions | grep -e '^[0-9].*]$' | head -n 1 | sed -e 's/^\([0-9]\+\).*$/\1/'`
        if [ -n "$session" ]; then
            echo "Attache tmux session $session."
            tmux attach-session -t $session
        else
            echo "Session has been already attached."
            tmux list-sessions
        fi
    else
        echo "Create new tmux session."
        tmux
    fi
fi
