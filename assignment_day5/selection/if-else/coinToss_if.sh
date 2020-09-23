#!/bin/bash -x

echo -n "CHOOSE 1: HEADS ||";
echo "2: TAILS *";
echo "****************************"
echo "Enter your Choice is: " 
read n;

random=$((RANDOM%2+1))

if [[ $random -eq $n ]]
then
	echo "Yohooooo, You Won...!";
else
	echo "Sorry, Better Luck next time..!";
fi


