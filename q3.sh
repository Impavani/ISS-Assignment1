#!/bin/bash
echo "enter file name"
read file
myfilesize=$(stat --format=%s "$file")
echo "size of the file is $myfilesize bytes"
echo "number of lines" 
wc -l $file | awk '{ print $1 }'
echo "number of words" 
wc -w $file | awk '{ print $1 }'
awk '{print "line No:" "<" NR ">" "-Count of Words:" "[" NF "]"}' $file
 
awk '{for(i = 1; i <= NF; i++) {a[$i]++}} END {for(k in a) if(a[k] > 1) {print  "word :<" k "> - count of repetition : [" a[k] "]"}}' $file
 