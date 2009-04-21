export EMAIL="arto@bendiken.net"
export EDITOR="joe"

source ~/.bash_aliases

for file in `ls ~/.profile.d/*.sh`; do
  source $file
done

if [ -f /opt/local/etc/bash_completion ]; then
  source /opt/local/etc/bash_completion
fi
