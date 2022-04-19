#!/bin/bash
echo "enter file name"
read file
while read line
do
if [[ ! -z $line ]]
then
    arr=($( echo "${line[@]}" | tr [.] '\t'))
    a=($( echo "${arr[@]}" | cut --complement -d "~" -f1 ))
    b=($( echo "${arr[@]}" | cut -d "~" -f1 ))
    echo "["${a[@]}"]" "once said," "\"["${b[@]}"]\"." >>speech.txt
fi
done <$file 