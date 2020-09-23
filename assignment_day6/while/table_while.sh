#!/bin/bash

echo -n "Enter a  no: "
read n;
printf "\n"
mul=1;
i=1;

while [ $i -le $n ]
do
mul=$(($mul*2))

if [[ $mul -le 256 ]]
then
echo "The value of 2 ^ $i is =  $mul"
echo "-------------------------------------"
i=$(($i+1))
#echo " i is $i n is $n"
else
break;
fi
done

printf "\n"

