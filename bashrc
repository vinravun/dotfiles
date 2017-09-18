#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

fortune -c | cowthink -f $(find /usr/share/cows -type f | shuf -n 1)

PS1='\A - [\W] > '
PS1="\n$PS1"


if [ -f $HOME/.bash_aliases ]
then
	  . $HOME/.bash_aliases
 fi
