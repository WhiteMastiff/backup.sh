#!/usr/bin/bash
log="/var/log/rsync/$(date +"%Y_%m_%d_%H_%M").log"
sources=(
        "/foo/directory" 
        )
for source in "${sources[@]}"; do
    touch "$log"
    rsync -ai "$source" --log-file="$log" /foo/destination
    done
