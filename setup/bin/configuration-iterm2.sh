#!/bin/sh

here=$(cd $(dirname $0); pwd)
. ${here}/settings.sh

ln -sf "${ETCDIR}/com.googlecode.iterm2.plist" ~/Library/Preferences/com.googlecode.iterm2.plist
