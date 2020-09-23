#!/bin/bash

echo -n "Enter a  no: "
read n;

#end=$((2*$n))
#echo $end
mul=1;

for((counter=1; counter<=$n; counter++))
do
mul=$(($mul*2))

#if [[ $mul -le $end ]]
#then
echo "The value of 2 ^ $counter is =  $mul"
echo "-------------------------------------"
#fi

done

printf "\n"

