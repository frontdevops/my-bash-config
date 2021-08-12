# pip install vizex
alias dfh="vizex"
alias cd..="cd .."
alias gitst="git status"
alias gitbr="git branch"
alias gitup="git pull origin"


settitle()
{
    if [[ -z "$ORIG" ]]
    then
         ORIG=$PS1
    fi
    TITLE="\[\e]2;$*\a\]"
    PS1=${ORIG}${TITLE}
}

progress_sleep()
{
    for i in `echo -n|awk "END{for(i=0;i<$1;i++)print i;}"`
    do
        echo -n .
        sleep 1
    done
}

# yum install -y idn
pingrf()
{
    ping $(idn --quiet "$@")
}


gitci()
{
    nowdate=$(date +"%y.%m%d.%H%M")
    git pull
    git add --all .
    git commit -m "Autocommit V $nowdate"
    git push origin
}


