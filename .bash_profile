# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

# silent startx
[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1 &> /dev/null

# loud startx
# [[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1

