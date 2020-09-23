#!/bin/bash -x
echo -n "Enter a no - "
read n
echo "*****************************************"
for((counter=2; counter<=$n/2; counter++))
do

if [[ $(($n%$counter)) -eq 0 ]]
then
echo "Prime factors are : $counter"
fi
done
