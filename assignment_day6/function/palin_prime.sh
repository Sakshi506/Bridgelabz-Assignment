#!/bin/bash -x

echo -n "Enter a number: " 
read n
echo "-----------------------------------"
#checking for prime no.
prime()
{
for(( i=2; i<=$n/2; i++))
do
 if [[ $(($n%$i)) -eq 0 ]]
 then
 echo "$n is not a prime no"
 exit
 fi
done
echo "$n is a prime no"
}

#A function for checking palindrome conditions
palindrome()
{
rev=0
while [ $num -ne 0 ]
do
rem=$(($num%10))
rev=$(($(($rev*10))+$rem))
num=$(($num/10))
done
if [ $rev -eq $n ]
then
echo "$n is a palindrome"
p=True
else
echo "$n is not a palindrome" 
fi
}
echo -n "Is $n a prime? => "
prime
printf "\n";

echo -n "Is $n a palindrome too => "
for value in $n
do
num=$n
palindrome
done
printf "\n"
if [ $p ]
then
echo -n "Is palindrome of $n is prime => "
prime
fi
