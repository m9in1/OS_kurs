#!/bin/bash
function maximum{
	m=$1
	for (( i=1; i<=3; i=($i + 1) ))
	do
		n=$i
		if [ "$n" -gt "$m" ]; then m=$n; fi
	done
return $m


}
while read line; do
	fstring=$line
	IFS=' ' read -ra my_array <<< "$fstring"
	R=${my_array[1]}
	G=${my_array[2]}
	B=${my_array[3]}
	echo "$R" >> comparsionfile_tmp
	echo "$G" >> comparsionfile_tmp
	echo "$B" >> comparsionfile_tmp
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

	echo $maxRGB
done
