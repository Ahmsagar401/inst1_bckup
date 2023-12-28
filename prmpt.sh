#!/bin/bash
echo "Enter the file path"
read path
if [ -f $path ]
then
	echo "enter the word to search in the same file"
	read word
	grep -i "$word" $path
	if [ $? -eq 0 ]
	then
	       	echo "Word exist in file"
	else
		echo "Word doesn't exist in file"
	fi
	else
	echo "File dosen't exist"
fi                
