#!/bin/bash

mkdir task2
cd task2
echo "creating files:"
sleep 3
touch F1 F2 F3
cd ..
echo "Creating task2_temp"
sleep 3
mkdir task2_temp
cp task2/* task2_temp/
echo "Swapping Names"
mv task2 task2_temp
mv task2_temp task2
chmod u+x $0
