#!/bin/sh

curl https://sh.rustup.rs -so /tmp/install_rustup.sh
sh /tmp/install_rustup.sh -y

cargo install evcxr_repl
