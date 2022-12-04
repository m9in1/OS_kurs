#!/bin/bash
function maximum {
	local m=$1

	local n=$1
	if [ "$n" -gt "$m" ]; then m=$n; fi
	n=$2
	if [ "$n" -gt "$m" ]; then m=$n; fi
	n=$3
	if [ "$n" -gt "$m" ]; then m=$n; fi
	
	echo $m
}

while read line; do
	fstring=$line
	IFS=' ' read -ra my_array <<< "$fstring"
	R=${my_array[1]}
	G=${my_array[2]}
	B=${my_array[3]}

	max=$(maximum $R $G $B)
	if [[ $R==$max ]] 
	then
		 echo "R" > color_data
	fi
	if [[ $G==$max ]]
	then
		 echo "G" > color_data
	fi
	if [[ $B==$max ]] 
	then
		echo "B" > color_data

	fi

done
