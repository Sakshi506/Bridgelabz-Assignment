#!/bin/bash -x
echo -n "Enter first no   "
read n1
echo -n "Enter second no  "
read n2
echo "Is $n1 or $n2 palindrome?  Here is the answer."
echo "------------------------------------------------"

palindrome()
{
rem=0;
rev=0
num=$n
while [ $n -ne 0 ]
do
rem=$(($n%10))
rev=$(($(($rev*10))+$rem))
n=$(($n/10))
done
if [ $num -eq $rev ]
then
echo "Yes, $num is a palindrome"
elif [ $num -ne $rev ]
then
echo "$num is not a palindrome"
fi
}

for data in $n1
do
n=$n1
palindrome
done

for data in $n2
do
n=$n2
palindrome
done
