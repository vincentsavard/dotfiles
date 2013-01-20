# ~/.zshrc

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

autoload -U compinit promptinit colors
compinit
promptinit
colors

PROMPT="%{$fg_no_bold[green]%}%n%{$reset_color%}:%{$fg_no_bold[yellow]%}%~%{$reset_color%} "
