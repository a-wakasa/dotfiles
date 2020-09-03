#!/bin/bash

here=$(cd $(dirname $0); pwd)
. ${here}/settings.sh

PRJDIR="${GITDIR}/fontpatcher"

[ ! -e /usr/local/opt/readline/lib/libreadline.7.dylib ] && \
    ln -s /usr/local/opt/readline/lib/libreadline.dylib /usr/local/opt/readline/lib/libreadline.7.dylib 

[ ! -e /usr/local/opt/readline/lib/libhistory.7.dylib ] && \
    ln -s /usr/local/opt/readline/lib/libhistory.dylib /usr/local/opt/readline/lib/libhistory.7.dylib

[ -d "${PRJDIR}" ] && rm -rf "${PRJDIR}"
git clone https://github.com/powerline/fontpatcher.git ${PRJDIR}

[ -f ~/Downloads/NasuFonts.zip ] && rm -f ~/Downloads/NasuFonts.zip
[ -d ~/Downloads/NasuFonts ] && rm -rf ~/Downloads/NasuFonts

if [ $(which wget) ];
then
    wget 'https://ja.osdn.net/frs/chamber_redir.php?m=jaist&f=%2Fusers%2F7%2F7587%2FNasuFont-20141215.zip' -O ~/Downloads/NasuFonts.zip
elif [ $(which curl) ];
then
    curl -L 'https://ja.osdn.net/frs/chamber_redir.php?m=jaist&f=%2Fusers%2F7%2F7587%2FNasuFont-20141215.zip' -o ~/Downloads/NasuFonts.zip
else
    exit 1
fi

mkdir -p ~/Downloads/NasuFonts
unzip -j ~/Downloads/NasuFonts.zip "*.ttf" -d ~/Downloads/NasuFonts

cd "${PRJDIR}/scripts"
fontforge -lang=py \
    -script "${BINDIR}/powerline-fontpatcher-for-NasuM.py" \
    --source-font "${PRJDIR}/fonts/powerline-symbols.sfd" \
    ~/Downloads/NasuFonts/NasuM-*.ttf

find "${PRJDIR}/scripts" -type f -name 'NasuM*.ttf' | xargs -I{} -L1 mv {} ~/Library/Fonts/
