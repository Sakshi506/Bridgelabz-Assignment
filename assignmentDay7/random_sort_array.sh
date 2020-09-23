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
#c) Printing second largest and second smallest value by sorting
temp=0;
for ((i=0; i<10; i++))
do
 for ((j=i+1; j<10; j++))
 do
 if [ ${Number[i]} -gt ${Number[j]} ]
 then
 temp=${Number[i]};
 Number[i]=${Number[j]};
 Number[j]=$temp;
 fi
 done
done

echo "Second smallest is ${Number[7]}"
echo "Second largest is ${Number[1]}"
#echo "${Number[*]}"
