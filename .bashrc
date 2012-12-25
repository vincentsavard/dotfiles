#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR='emacs -nw'

# Add ~/.bin to PATH
NPATH="$HOME/.bin"

case ":${PATH}:" in
    *:${NPATH}:*) ;;
    *) PATH=${PATH}:$NPATH ;;
esac

export PATH

alias ls='ls --color=auto'
alias ll='ls -lh --color=auto --group-directories-first'
alias e='emacs -nw'
alias ocaml='rlwrap ocaml'

PS1='\[\e[1;36m\]\u\[\e[0;1m\]:\[\e[0;36m\]\W\[\e[m\] '

source ~/.git-completion.bash
