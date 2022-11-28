#!/bin/bash
while read line; do
	read string_cs<tempfile
	string_lb=$line
	tm=$(date +%H:%M:%S: )
	if [[ string_cs==string_lb ]]
	then
		echo $tm Result from color sense eq led blinker>>result.txt	
	else
		echo $tm Result from color sense not eq led blinker>>result.txt


done
