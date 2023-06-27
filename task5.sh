#!/bin/bash

arg="$1"
size_of_arg="${#arg}"

#to print the upper broder/length

for((i = 0;i<size_of_arg+4;i++));do
	echo -n "*"
done
echo
#printing the argument and the height

echo "* $1 *"
#printing the lower border

for((i = 0;i<size_of_arg+4 ;i++));do
        echo -n "*"
done
echo



