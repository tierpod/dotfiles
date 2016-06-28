# custom settings
export LANG=en_US.utf-8
export EDITOR=vim
export HISTCONTROL=ignoreboth
export VAGRANT_DEFAULT_PROVIDER=virtualbox

# enable 256 color mode
if [ -z $TMUX ]; then
	export TERM=xterm-256color
else
	export TERM=screen-256color
fi

# enable __git_ps1 for Fedora
if [ -e '/usr/share/git-core/contrib/completion/git-prompt.sh' ]; then
	source /usr/share/git-core/contrib/completion/git-prompt.sh
fi

# custom PS1
if [ $EUID == 0 ]; then
	PS1='\[\033[01;31m\]\h\[\033[01;36m\]:\W\$\[\033[00m\] '
else
	PS1=' \[\033[01;34m\]\W\[\033[01;33m\]$(__git_ps1)\$\[\033[00m\] '
fi

