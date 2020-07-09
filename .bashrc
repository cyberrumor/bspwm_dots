# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# set pywal theme on tty
# source ~/.cache/wal/colors-tty.sh

# set pywal theme
# (cat ~/.cache/wal/sequences &)

# set ls colors
alias ls='ls --color=auto'

# delete vi from git
alias git='EDITOR=nano git'

# set prompt
PS1='[\u@\h \W]\$ '

# set default dir
cd $XDG_HOME

# for wireshark getting ssl cert
# export SSLKEYLOGFILE=~/.ssl-key.log

# neofetch
if [[ $TERM == rxvt-unicode-256color ]]; then
	clear && neofetch --color_blocks off
	# clear && neofetch
else
	clear
fi

