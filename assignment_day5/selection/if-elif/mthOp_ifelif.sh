#!/bin/bash -x

echo -n "Enter first no"
read a
echo -n "Enter second no"
read b
echo -n
echo -n "Enter third no"
read c

first=$(($a + $(($b * $c)) ))
second=$(( $(($a % $b )) + $c ))
third=$(( $c + $(($a / $b )) ))
fourth=$(( $(( $a * $b )) + $c))

echo "The value of: "

echo "$a + $b * $c = | $first"
echo "$a % $b + $c = | $second"
echo "$c + $a / $c = | $third"
echo "$a + $b + $c = | $fourth"
echo "-----------------------------------------------------"

echo -n "The max no we get is = "

if [ $first -gt $second ] && [ $first -gt $third ] && [ $first -gt $fourth ]
then
echo "$first"
elif [ $second -gt $first ] && [ $second -gt $third ] && [ $second -gt $fourth ]
then
echo "$second"
elif [ $third -gt $first ] && [ $third -gt $second ] && [ $third -gt $fourth ]
then
echo "$third" 
elif [ $fourth -gt $first ] && [ $fourth -gt $second ] && [ $fourth -gt $third ]
then
echo "$fourth" 
fi

echo -n "The min no we get is = " 

if [ $first -lt $second ] && [ $first -lt $third ] && [ $first -lt $fourth ]
then
echo "$first" 
elif [ $second -lt $first ] && [ $second -lt $third ] && [ $second -lt $fourth ]
then
echo "$second" 
elif [ $third -lt $first ] && [ $third -lt $second ] && [ $third -lt $fourth ]
then
echo "$third" 
elif [ $fourth -lt $first ] && [ $fourth -lt $second ] && [ $fourth -lt $third ]
then
echo "$fourth" 
fi
