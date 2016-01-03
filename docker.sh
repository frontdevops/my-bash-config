dockerip() {
    sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}' "$@"
}

dockerips() {
	sudo docker ps
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
