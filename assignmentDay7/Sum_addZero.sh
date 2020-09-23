#!/bin/bash -x
echo -n "Enter three integers:  "
read a ; read b ; read c

sum=$((($a+$b)+$c))
 if [ $sum -eq 0 ]
 then
 echo "Sum is equals to zero"
 fi
