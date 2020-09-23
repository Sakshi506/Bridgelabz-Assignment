#!/bin/bash -x
count=1;
while [ $count -le 100 ]
do
first=$(($count%10))
second=$(($count/10))

 if [ $first -eq $second ]
 then
 Number+=( "$count" )
 fi
count=$(($count+1))
done

#code showing stored values in an array
for value in Number[]
do
echo "${Number[*]}"
done

