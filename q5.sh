read s
strlen=${#s}
i=$((strlen-1))
while [ $i -ge 0 ]
do
    revstr=$revstr${s:$i:1}
    i=$((i-1))
done
echo "$revstr"
i=$((strlen-1))
while [ $i -ge 0 ]
do
    revstr1=$revstr1${s:$i:1}
    i=$((i-1))
done
y=$(echo "$revstr1" | tr "0-9a-zA-Z" "1-9a-zA-Z_")
echo "$y"
i=$((strlen/2-1))
while [ $i -ge 0 ]
do
    revstr2=$revstr2${s:$i:1}
    i=$((i-1))
done
x=$((strlen/2-1))
echo "$revstr2"${s:x+1:x+1}

