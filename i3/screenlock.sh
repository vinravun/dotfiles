
#!/bin/bash
scr='/tmp/screenshot.png'
#icon="lock-icon.png"

fortune=$(expand -t 2 <(fortune -s))

scrot "$scr"
convert "$scr" -scale 10% -scale 1000% -fill "#ffffff" -annotate +0+200 "$fortune" "$scr"
i3lock -ui "$scr"