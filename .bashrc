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
# no steam locomotives
alias sl='ls'

# enable auto-cd
shopt -s autocd

# set prompt
PS1='[\u@\h \W]\$ '

# set default dir
cd $XDG_HOME

# for wireshark getting ssl cert
# export SSLKEYLOGFILE=~/.ssl-key.log

# neofetch
if [[ $TERM == alacritty ]]; then
	clear && neofetch --color_blocks off --refresh_rate on
#	# clear && neofetch
else
	clear
fi

