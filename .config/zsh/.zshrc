# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=5000
SAVEHIST=5000
setopt autocd extendedglob nomatch
unsetopt beep notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/paul/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# source antidote
source /usr/share/zsh-antidote/antidote.zsh

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load

# Added with Cargo
eval "$(atuin init zsh)"

# Starship - Prompt
eval "$(starship init zsh)"

alias yadml="lazygit -ucd .local/share/yadm/lazygit -w ~ -g .local/share/yadm/repo.git"
alias code="vscodium"
