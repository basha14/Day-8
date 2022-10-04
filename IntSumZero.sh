#!/bin/bash -x
#declare -A array
array=(5 6 8 -3 -3 2)
echo ${array[@]}
for (( i = 0; i < $array-2; i++ ))
do 
	for (( j = i+1; j < $array-1; j++ ))
		do
		for (( k = j+1; k < $array; k++ ))
			do
			if (( array[i] + array[j] + array[k] == 0 ))
				then
					echo ${array[@]}
			fi
		done
	done
done
