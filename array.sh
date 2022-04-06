!#/bin/bash
i=0
n=5
while [ "$i" -lt $n ] ; do
echo "Please input strings ... `expr $i + 1`"
 read array[$i]
b=${array[$i]}
echo "$b"
i=`expr $i + 1`
 done
