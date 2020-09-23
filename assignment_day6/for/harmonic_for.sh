#!/bin/bash -x
echo -n "Enter a no: "
read n;
sum=0;
for((counter=1; counter<=$n; counter++))
do
#sum=$(echo $sum $value | awk '{printf "%f", $1 + $2}')
sum=`awk 'BEGIN{printf "%f", ('$sum'+ 1/'$counter')}'`
echo $value
#sum=`awk 'BEGIN{printf "%f", $sum + $value}'`
done
echo "The harmonic sum for $n is :   $sum"
