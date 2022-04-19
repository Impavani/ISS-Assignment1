#!/bin/bash
echo "enter file name"
read file
echo "After removing empty lines:"
grep . $file
echo "After removing duplicate lines"
awk '!seen[$0]++' $file