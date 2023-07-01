#!/bin/bash

url="https://fastly.picsum.photos/id/784/1920/1080.jpg?hmac=-8DXqUGvoqi4XgJxLL0QPeXFKYx_5uZR_ob0HfZr-Uo"
path=""
fname="image.jpg"
resolution=""

usage() {
    echo "Usage: ./wallpaper.sh [ -p PATH | -t ] [ -o FILENAME ] [ -r RESOLUTION ]"
    echo "    -p : Save image to a specific path."
    echo "    -t : Save image in the /tmp folder."
    echo "    -o : Specify a custom filename for the image."
    echo "    -r : Set a custom resolution for the image."
    echo
    echo "Example: ./wallpaper.sh -p ~/Desktop -o my-wallpaper -r 1300x720"
}

while getopts ":p:to:r:h" opt; do
    case $opt in
        p)
            path=$OPTARG
            ;;
        t)
            path="/tmp"
            ;;
        o)
            fname=$OPTARG
            ;;
        r)
            resolution=$OPTARG
            ;;
        h)
            usage
            exit 0
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            usage
            exit 1
            ;;
    esac
done

if [[ -z $path ]]; then
    path="."
fi

# Download the image
curl -o "${path}/${fname}" "${url}"

# Resize the image if a resolution is provided
if [[ -n $resolution ]]; then
    convert "${path}/${fname}" -resize "${resolution}" "${path}/${fname}"
fi

echo "Image downloaded and saved successfully: ${path}/${fname}"

