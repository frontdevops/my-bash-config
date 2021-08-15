#!/bin/bash

cdir=$(dirname $0)

case ${1?"Set type argument: root or user"} in
    "root")
        cat $cdir/prompt-root.zsh >> ~/.zshrc
    ;;
    *)
        cat $cdir/prompt-user.zsh >> ~/.zshrc
    ;;
esac
