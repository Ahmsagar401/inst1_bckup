#!/bin/bash
top -b -n 1 | awk -F " " 'NR>7' > usage
while read line
do
	c=` echo "$line" | awk -F " " '{print $9}' | awk -F "." '{print $1}'`
	if [ $c -gt 1 ]
	then
		echo "$line" | awk -F " " '{print $NF}' && date >> pr
	fi
done < usage
cat pr | mail -s "Usage alert" "ashishhmsagar@gmail.com"
