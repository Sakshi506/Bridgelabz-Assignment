#!/bin/bash -x

echo -n "Enter a no to find the factorial  "
read n;

fact=1

for((counter=$n; counter>=1; counter--))
do
fact=$(($fact*$counter));
done
echo "**************************************"
echo "The factorial of $n is  -> " $fact
