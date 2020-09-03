#!/bin/sh

here=$(cd $(dirname $0); pwd)
. ${here}/settings.sh

brew upgrade python
