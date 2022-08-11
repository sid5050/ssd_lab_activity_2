#!/bin/bash

#filename variable will store name of file passed as argument from command line
filename=$1

#rows variable will store the count of number of lines of content of file passed as argument
rows="$( wc -l < $filename )"

#If rows is odd adjust the value
if (( $rows%2 == 1 ))
then
	rows=$(( $rows+1 ))
fi

rows=$(( $rows/2 ))

#Use awk with -v to print the middle line of the content of the file.
awk -v line="$rows" '{
if (NR==line)
{
print $0
}
}' $filename
