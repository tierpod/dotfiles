# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Custom settings and completions
[ -d "$HOME/.config/bash/" ] && for file in $HOME/.config/bash/*.sh; do . $file; done
