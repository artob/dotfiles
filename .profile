# ~/.profile: executed by the command interpreter for login shells.
# Not read by bash(1) if ~/.bash_profile or ~/.bash_login exist.

export EMAIL="arto@bendiken.net"
export EDITOR="joe"

if [ -d ~/.profile.d ]; then
  for file in `ls ~/.profile.d/*.sh`; do
    source $file
  done
fi

if [ -d ~/.private ]; then
  for file in `ls ~/.private/*.sh`; do
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
