#!/bin/sh

here=$(cd $(dirname $0); pwd)
. ${here}/settings.sh

if [ ! -s /usr/local/bin/zsh ];
then
    ln -sf "$(find /usr/local/Cellar -type f -name 'zsh' 2>/dev/null | head -1)" /usr/local/bin/zsh
fi

if [ ! -n "$(grep '/usr/local/bin/zsh' /etc/shells)" ];
then
    sudo echo '/usr/local/bin/zsh' >> /etc/shells
fi
chsh -s /usr/local/bin/zsh
