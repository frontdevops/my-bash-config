if [ -f /etc/bashrc ];then . /etc/bashrc;fi
if [ -f /etc/bash_completion ];then . /etc/bash_completion;fi

umask 002
HISTCONTROL=ignoreboth

declare -x EDITOR=mcedit
export SVN_EDITOR=mcedit

function progress_sleep
{
    for i in `echo -n|awk "END{for(i=0;i<$1;i++)print i;}"`
    do
        echo -n .
        sleep 1
    done
}

pingrf()
{
    ping $(idn --quiet "$@")
}


#alias ls='ls --color'
LS_COLORS='di=4:fi=32:ln=33:pi=5:so=43:bd=41:cd=36:or=31:mi=0:ex=1:*.rpm=90'
export LS_COLORS


alias cd..="cd .."
alias ll="ls -al"
alias ~~="cd /www/sites/"
alias cdr="cd /root/"
alias gitst="git status"
alias gitbr="git branch"
alias gitdiff="git diff"

gitup()
{
	git fetch
	echo "git pull origin ${1:-master}"
	git pull origin ${1:-master}
}

gitci()
{
    while getopts 'm:vf:vb:v' flag
    do
        case $flag in
            m) m=$OPTARG ;;
            f) f=$OPTARG ;;
            b) b=$OPTARG ;;
            *) error "Unexpected option $flag" ;;
        esac
	done

	m=${m:?"Error! Empty argument -m"}
	b=${b:-"master"}

	gitup $b
	git add --all ${f:-"."}
	git commit -am "$m"
	echo "git push origin $b"
	git push origin $b
}

source ~/my-bash-config/docker.sh
source ~/my-bash-config/colors.sh
source ~/my-bash-config/prompt-git.sh
