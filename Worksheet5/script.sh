#!/bin/bash

[[ -e United\ States ]]
if [[ $? == 1 ]]
then
		mkdir United\ States
	fi
	for category in Music Entertainment Gaming Comedy
	do
			awk -F ',' -v category=$category '{ if ($5 == category && $9 == "US") print}' Global\ YouTube\ Statistics.csv > United\ States/$category.txt
		done
