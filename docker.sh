alias dockers='docker ps -lq'


function dockerip()
{
    docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "$@"
}


function dockerips()
{
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


function dockersys()
{
    mem_amount_total_with_unit=$(docker system info | grep 'Total Memory: ' | tr -d 'Total Memory: ')
    unit=$(echo ${mem_amount_total_with_unit} | sed 's/[0-9\.]*//g')
    mem_amount_total=$(echo ${mem_amount_total_with_unit} | sed 's/[^0-9\.]*//g')
    mem_percent_used=$(docker stats --no-stream --format '{{.MemPerc}}' | tr -d '%' | paste -s -d '+' - | bc)
    mem_percent_used=${mem_percent_used:-0}
    mem_amount_used=$(echo "scale=2; ${mem_amount_total} * ${mem_percent_used} / 100" | bc)

    echo -e "Memory Amount Total:\t${mem_amount_total}${unit}"
    echo -e "Memory Amount Used:\t${mem_amount_used}${unit}"
    echo -e "Memory Percent Used:\t${mem_percent_used}%"
}

