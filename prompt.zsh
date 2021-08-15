#!/bin/bash

case ${1?"Set type argument: root or user"} in
    "root")
	    echo 'PROMPT="%F{red}╭─ %* %K{red}%F{black}%K{red}%F{255} %n ❱ %/ %k%F{red}%f%k"$'\\n'"%F{red}╰─❱❱❱%K{21}%F{red}%k "'
    ;;
    *)
		echo 'PROMPT="%F{yellow}╭─ %* %K{21}%F{black}%K{21}%F{255} %n ❱ %/ %k%F{21}%f%k"$'\\n'"%F{yellow}╰─❱❱❱%K{21}%f%k "'
    ;;
esac

