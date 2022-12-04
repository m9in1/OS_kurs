#!/bin/bash
while read line; do
	read string_cs<color_data
	string_lb=$line
	tm=$(date +%H:%M:%S: )
	if [ $string_cs == $string_lb ]; then
		echo "$tm Result from color sense equal led blinker">>result.txt
	else
		echo "$tm Result from color sense not equal led blinker">>result.txt
	fi
done
