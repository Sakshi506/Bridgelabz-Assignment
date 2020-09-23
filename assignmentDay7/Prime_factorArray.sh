#!/bin/bash -x
echo -n "Enter a no:  "
read n;
if [ $n -gt 0 ]
then
count=1;
while [ $count -le $(($n/2)) ]
do
 if [ $(($n%$count)) -eq 0 ]
 then
 Number+=( "$count" )
 fi
count=$(($count+1))
done
#code showing stored values in an array
for value in Number[]
do
echo "Prime factors of $n are :  ${Number[*]}"
done
else
echo "Please enter a valid no"
fi
