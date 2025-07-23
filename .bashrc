#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias lifefiles='/usr/bin/git --git-dir=$HOME/.lifefiles/ --work-tree=$HOME'
if [[ -f "$HOME/.config/colors/current" ]]; then
	source "$HOME/.config/colors/current"
fi
