#!/bin/bash -x
echo -n "Enter first no   "
read n1
#echo -n "Enter second no  "
#read n2
num=$n1;
#palindrome()
rem=0;
rev=0
while [ $n1 -ne 0 ]
do
rem=$(($n1%10))
rev=$(($(($rev*10))+$rem))
n1=$(($n1/10))
done
if [ $num -eq $rev ]
then
echo "y"
fi
