#!/bin/bash -x
#a) Generate 10 random 3-digit no.
count=1;
temp=0;
declare -a Number
while [ $count -le 10 ]
do
temp=(${RANDOM:0-3})
#b) storing value in array
Number+=( "$temp" )
count=$(($count+1))
done

#code showing stored values in an array
for value in Number[]
do
echo "${Number[*]}"
done
echo "-------------------------------------------------------------------------------"
#c) Printing second largest and second smallest value
first=${Number[0]};
second=$first;

for ((i=1; i<10; i++))
do
 if [ $first -lt ${Number[i]} ]
 then
 second=$first;
 first=${Number[i]};
 elif [ ${Number[i]} -gt $second ] && [ ${Number[i]} -ne $first ]
 then
 second=${Number[i]}
 fi
done
echo "second largest is: $second"

#finding second smallest
first=${Number[0]};
second=$first;

for ((i=1; i<10; i++))
do
 if [ $first -gt ${Number[i]} ]
 then
 second=$first;
 first=${Number[i]};
 elif [ ${Number[i]} -lt $second ] && [ ${Number[i]} -ne $first ]
 then
 second=${Number[i]}
 fi
done
echo "second smallest is: $second"
