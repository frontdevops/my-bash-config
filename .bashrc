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

#PS1="\n\[\e[1;32m\][ \A\[\e[m\] <\u@\h> \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]]\n[ bash: \[\e[m\]\[\e[0;32m\] "
PS1="\n\[\e[32m\][ \A\[\e[m\] <\u@\h> \[\e[33m\]\w\[\e[m\] \[\e[32m\]\[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]]\n\[\e[41m\][ bash: \[\e[m\]\[\e[32m\] "

# For root user add in /root/.bashrc this row:
# PS1='\[\e[0;33m\][ \A\[\e[m\] <\u@\h> \[\e[0;33m\]\w\[\e[m\] \[\e[0;31m\]]\n[ bash: \[\e[m\]\[\e[1;31m\]'

alias ll='ls -al'
alias ~~="cd /www/sites/"
alias gitst='git status'

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
