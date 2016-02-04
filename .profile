# ~/.profile: executed by the command interpreter for login shells.
# Not read by bash(1) if ~/.bash_profile or ~/.bash_login exist.

export EMAIL="arto@bendiken.net"
export EDITOR="joe"
export LC_CTYPE="en_US.UTF-8"

# Load ~/.profile.d/*.sh in lexical order:
if [ -d "$HOME/.profile.d" ]; then
  for file in `ls -1 $HOME/.profile.d/*.sh 2>/dev/null`; do
    source $file
  done
fi

# Load ~/.private.d/*.sh in lexical order:
if [ -d "$HOME/.private.d" ]; then
  for file in `ls -1 $HOME/.private.d/*.sh 2>/dev/null`; do
    source $file
  done
fi

# bash(1)-specific initialization:
if [ -n "$BASH_VERSION" ]; then
  # Load ~/.bashrc if it exists:
  if [ -f "$HOME/.bashrc" ]; then
    source "$HOME/.bashrc"
  fi
fi
