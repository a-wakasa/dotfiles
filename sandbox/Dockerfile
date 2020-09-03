FROM ubuntu:19.04

WORKDIR /root
ARG username="dev"
ENV TERM xterm

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y zsh vim git sudo curl wget
#RUN apt-get install -y bluez bluez-tools
RUN apt-get install -y python3 python3-pip
RUN apt-get install -y golang


RUN git clone https://github.com/peristrophe/dotfiles.git
WORKDIR /root/dotfiles
RUN make deploy
RUN mkdir ${PWD}/.vim/bundle
RUN git clone https://github.com/VundleVim/Vundle.vim.git ${PWD}/.vim/bundle/Vundle.vim
RUN vim +PluginInstall +qall


RUN grep -n 'wheel members' /etc/pam.d/su | awk -F: '{if(NR==1) print $1 + 3}' | \
    xargs -I{} sed -i '{}iauth sufficient pam_wheel.so trust group=wheel' /etc/pam.d/su
RUN addgroup wheel
RUN echo '%wheel ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/wheel_group
RUN which zsh | xargs -I{} chsh -s {}
RUN which zsh | xargs -I{} useradd ${username} -m -G wheel -p ${username} -s {}

USER ${username}
WORKDIR /home/${username}
RUN git clone https://github.com/peristrophe/dotfiles.git
WORKDIR /home/${username}/dotfiles
RUN make deploy
RUN mkdir ${PWD}/.vim/bundle
RUN git clone https://github.com/VundleVim/Vundle.vim.git ${PWD}/.vim/bundle/Vundle.vim
RUN vim +PluginInstall +qall

WORKDIR /home/${username}
RUN pip3 install --user pipenv

RUN curl -L git.io/nodebrew | perl - setup
RUN ${HOME}/.nodebrew/current/bin/nodebrew install v11.12.0
RUN ${HOME}/.nodebrew/current/bin/nodebrew use v11.12.0
RUN PATH=${HOME}/.nodebrew/current/bin:${PATH} npm -g install vue-cli
