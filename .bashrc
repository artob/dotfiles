# ~/.bashrc: executed for interactive bash(1) shells.

# Load ~/.bash_aliases if it exists:
if [ -f "$HOME/.bash_aliases" ]; then
  source "$HOME/.bash_aliases"
fi

# Mac OS X + MacPorts: `sudo port install bash-completion`
if [ -f /opt/local/etc/bash_completion ]; then
  source /opt/local/etc/bash_completion
fi
