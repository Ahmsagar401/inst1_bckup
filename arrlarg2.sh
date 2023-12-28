#!/bin/bash
array="1 2 10 4 5"
count=1
for i in $array
do
	if [ $count -eq 1 ] 
	then
		g1=$i
	fi
	if [ $g1 -gt $i ]
	then
		largest=$g1
	else
		largest=$i
		g1=$i
	fi
	count=`expr $count + 1`
done
 echo "$largest"
