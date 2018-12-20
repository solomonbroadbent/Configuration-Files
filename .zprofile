# Set the environment variable TERMINAL to hyper for i3
export TERMINAL=linux64
export EDITOR=/usr/bin/vim
export VISUAL=$EDITOR
export TERM=xterm-256color

# Clear caps lock key and then swap caps lock and escape key
setxkbmap -option caps:swapescape

# Start X server
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
fi
