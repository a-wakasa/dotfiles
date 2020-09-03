#!/bin/sh

here=$(cd $(dirname $0); pwd)
. ${here}/settings.sh

xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
