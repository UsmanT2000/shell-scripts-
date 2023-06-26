#!/bin/bash
target_file="$1"
current_dir="$2"

for target in "$current_dir"/*; do
    if [ -f "$target" ] && [ "$target" = "$current_dir/$target_file" ]; then
        echo "Found: ${target}"
    fi
done
##  ./task1.sh task1.sh . (works with . current directory opertor instead of directory separator) 
