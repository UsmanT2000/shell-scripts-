#!/bin/bash

str_flag=0
char_flag=0
str=null
char=null
argu="$2"
size_of_arg="${#argu}"

while getopts ":c:s:" arg; do
    case $arg in
        c)
            char_flag=1
            char=$OPTARG
            ;;
        s)
            str_flag=1
            str=$OPTARG
            ;;
        *)
            echo "Wrong Arguments"
            ;;
    esac
done

if [ $str_flag -eq 1 ] && [ $char_flag -eq 0 ]; then
    echo $argu
else
    # to print the upper border/length
    for ((i = 0; i < size_of_arg + 4; i++)); do
        echo -n "$4"
    done
    echo

    # printing the argument and the height
    echo "$4 $argu $4"

    # printing the lower border
    for ((i = 0; i < size_of_arg + 4; i++)); do
        echo -n "$4"
    done
    echo
fi

