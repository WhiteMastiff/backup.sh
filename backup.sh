#!/usr/bin/bash
log="/var/log/rsync/$(date +"%Y_%m_%d_%H_%M").log"
sources=(
        "/foo/directory" 
        )
touch "$log"
for source in "${sources[@]}"; do
    rsync -ai "$source" --log-file="$log" /foo/destination
    done
