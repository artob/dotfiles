# ~/.bashrc: executed by bash(1) for non-login shells.

# Don't do anything if not running interactively:
[ -z "$PS1" ] && return

# Configure the command history stored in ~/.bash_history:
shopt -s histappend                # append, don't overwrite
HISTCONTROL=ignoredups:ignorespace # don't duplicate lines
HISTSIZE=1000
HISTFILESIZE=2000

# Check the window size after each command and, if necessary, update the
# values of LINES and COLUMNS accordingly:
shopt -s checkwinsize

# Make `less` more friendly for non-text input files; see lesspipe(1):
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Set a variable identifying the chroot you work in (used in the prompt):
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
  debian_chroot=$(cat /etc/debian_chroot)
fi

# Set a fancy colored prompt:
if [ "$TERM" = "xterm-color" ]; then
  PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
  PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi

# Set the title to "user@host:dir" if this is an xterm:
case "$TERM" in
  xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
esac

# Enable color support for `ls` and `grep`:
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

# Load ~/.bash_aliases if it exists:
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Enable programmable completion features:
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
  . /etc/bash_completion
fi
if [ -f /opt/local/etc/bash_completion ]; then
  # Mac OS X + MacPorts: `sudo port install bash-completion`
  . /opt/local/etc/bash_completion
fi
