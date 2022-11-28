#!/bin/bash
function maximum{
	local m=$1

	local n=$1
	if [ "$n" -gt "$m" ]; then m=$n; fi
	n=$2
	if [ "$n" -gt "$m" ]; then m=$n; fi
	n=$3
	if [ "$n" -gt "$m" ]; then m=$n; fi
	
return $m
}

while read line; do
	fstring=$line
	IFS=' ' read -ra my_array <<< "$fstring"
	R=${my_array[1]}
	G=${my_array[2]}
	B=${my_array[3]}

	max=$maximum $R $G $B
	echo ${max}
	if [ $R -eq $max ] 
	then
		maxRGB=R
	fi
	if [ $G -eq $max ]
	then
		maxRGB=G
	fi
	if [ $B -eq $max ] 
	then
		maxRGB=B
	fi

	echo $maxRGB > tempfile
done
