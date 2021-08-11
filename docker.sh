alias dockers='docker ps -lq'

dockerip() {
    docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "$@"
}

dockerips() {
    printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' =
    #seq -s- $COLUMNS|tr -d '[:digit:]'

    i=0
    docker ps | while read s
    do
        if [[ 0 == $i ]]
        then
            echo -e "| $s\tLocal IP"
            printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
            ((i=i+1))
        else
            uid=$(echo $s | awk '{print $1}')
            localip=`dockerip $uid`
            if [ ! -z "$localip" ]
            then
                echo -e  "| $s\t$localip"
            else
                echo -e "| $s\tlocalhost"
            fi
        fi
    done

    printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' _
}



