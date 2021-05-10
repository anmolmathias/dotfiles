[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
source ~/.fehbg
exec i3
