#!/bin/bash -x

#echo "A program to enter 5 random two digit no and print its sum and avg"

i=0
while [ $i -lt 5 ]
do
val=$((RANDOM%100));
sum=$((val+sum))
i=`expr $i + 1`
echo "value is :" $val "and sum is " $sum "no is " $i
done
echo "Total sum is: " $sum
echo "Average is: " $((sum/i))


















<<comments
v1=$((RANDOM%100+1))
v2=$((RANDOM%100+1))
v3=$((RANDOM%100+1))
v4=$((RANDOM%100+1))
v5=$((RANDOM%100+1))
comments
