#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

fortune -c | cowthink -f $(find /usr/share/cows -type f | shuf -n 1)

PS1='[\A \u@\h \W]\$ '
PS1="\n$PS1"


if [ -f $HOME/.bash_aliases ]
then
	  . $HOME/.bash_aliases
 fi

man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}