#!/bin/bash -x

#A general program to unit conversion


echo "enter 1 to convert 42 inches in feets 
enter 2 to convert 60ft x 40ft  in mtr
enter 3 to 25 such plots in acres"
echo -n "Please enter your choice what you want to convert:  "
read value

#echo $value

if [ $value -eq 1 ]
then 
echo " $((42/12))   feets"
elif [ $value -eq 2 ]
then echo " $(($((60*40))/3)) mtrs"
elif [ $value -eq 3 ]
then echo "$(($(($((60*40))/3))*25)) acres"
else
echo "HEY! CONGO NO PROBLEM AT THIS CHOICE"
fi
