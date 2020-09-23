#!/bin/bash -x


echo -n "Enter a starting range: "
read n1
echo "-----------------------------------"
echo -n "Enter a ending range: "
read n2
echo "-----------------------------------"

if [[ $n1 -le 2 ]]
then
echo "2 is a prime no."
fi

for((i=$n1; i<=$n2; i++))
do
count=0;

for((counter=2; counter<i; counter++))
do

if [[ $(($i%$counter)) -eq o ]]
then
count+=1;
fi
done

if [[ $count -eq 0 ]]
then
echo "$i is a prime no"
fi


done
