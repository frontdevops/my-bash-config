
export CLICOLOR=1
# Default
# export LSCOLORS=ExFxCxDxBxegedabagacad

# You can use this if you are using a black background
# export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
# or
export LSCOLORS=GxFxCxDxBxegedabagaced

# If you'd like to mimic the colors of a typical Linux terminal:
#export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd


alias ll='ls -Gal'
alias cd..="cd .."
alias gitst="git status"
alias gitbr="git branch"
alias gitup="git pull"
alias dfh="vizex"


gitci()
{
    nowdate=$(date +"%y.%m%d.%H%M")
    git pull
    git add --all .
    git commit -m "Autocommit V $nowdate"
    git push origin
}



PROMPT="%F{yellow}╭─ %* %K{21}%F{black}%K{21}%F{255} %n ❱ %/ %k%F{21}%f%k"$'\n'"%F{yellow}╰─❱❱❱%K{21}%f%k "



# EOF #
