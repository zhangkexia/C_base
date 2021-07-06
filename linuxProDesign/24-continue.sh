#!/bin/sh

rm -rf fred*
echo > fred1
echo > fred2
mkdir fred3
echo > fred4

for file in fred*
do
    if [ -d "$file" ];then
        echo "skipping directory $file"
        continue
    fi
    echo file is $file
done
rm -rf fred*
exit 0
