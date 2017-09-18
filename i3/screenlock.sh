
#!/bin/bash
scr='/tmp/screenshot.png'
#icon="lock-icon.png"

scrot "$scr"
convert "$scr" -scale 10% -scale 1000% "$scr"
[[ -f ~/.config/i3/lock.png ]] && convert /tmp/screen.png  ~/.config/i3/lock.png -gravity center -composite -matte /tmp/screen.png

i3lock -u -e -i "$scr"