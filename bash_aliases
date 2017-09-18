#aliases

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias ls='ls -CF --color=auto'
alias ll='ls -la --color=auto'
alias l.='ls -d .* --color=auto'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias mount='mount | column -t'

# pacman helpers
alias pac='sudo pacman -S'   # install
alias pacup='sudo pacman -Syu && pacaur -Su'    # update
alias pacr='sudo pacman -Rs'   # remove
alias pacs='sudo pacman -Ss'      # search
alias paci='sudo pacman -Si'      # info
alias paclo='pacman -Qdt'    # list orphans
alias pacro='paclo && sudo pacman -Rns $(pacman -Qtdq)' # remove orphans
alias pacc='sudo pacman -Scc'    # clean cache
alias paclf='sudo pacman -Ql'   # list files

alias startgdm='sudo systemctl start gdm.service'

alias ymusic='youtube-dl --extract-audio --audio-format mp3 -i -o "%(title)s.%(ext)s"'

alias wget='wget -c'

alias cpcamfiles='bash $HOME/code/bash/cpphoto.sh' #copy files from the camera card

alias elog='bash $HOME/code/bash/elog.sh' # entering log

alias killallwine="wineserver -k; killall -9 wine wineserver; for i in `ps ax|egrep \"*\.exe\"|grep -v 'egrep'|awk '{print $1 }'`;do kill -9 $i;done"
