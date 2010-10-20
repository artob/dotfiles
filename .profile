ulimit -u 512

export EMAIL="arto@bendiken.net"
export EDITOR="joe"

if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi

if [ -d ~/.profile.d ]; then
  for file in `ls ~/.profile.d/*.sh`; do
    source $file
  done
fi

if [ -f /opt/local/etc/bash_completion ]; then
  source /opt/local/etc/bash_completion
fi

if [ -d ~/.private ]; then
  for file in `ls ~/.private/*.sh`; do
    source $file
  done
fi
