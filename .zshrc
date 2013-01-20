# ~/.zshrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set default editor
export EDITOR='emacs -nw'

# Add ~/.bin to PATH
if ! [[ "${PATH}" =~ "^${HOME}/.bin" ]]; then
    export PATH="${HOME}/.bin:${PATH}"
fi

# Aliases
alias ls='ls --color=auto'
alias ll='ls -lh --color=auto --group-directories-first'
alias e='emacs -nw'
alias ocaml='rlwrap ocaml'
alias chmod='chmod -c'
alias chown='chown -c'

# zsh stuff
autoload -U compinit promptinit colors
compinit
promptinit
colors

# Prompt
# Ex.: vincent:~
PROMPT="%{$fg_no_bold[green]%}%n%{$reset_color%}:%{$fg_no_bold[yellow]%}%~%{$reset_color%} "
