dockerip() {
    docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "$@"
}

dockerips() {
    docker ps
    echo -e "\nIP for runed containers:"
    for dock in $(sudo docker ps | tail -n +2 | cut -d" " -f1)
    do
        local dock_ip=$(dockerip $dock)
        if [[ -n "$dock_ip" ]]
        then
            echo $dock = $dock_ip
        fi
    done
}
