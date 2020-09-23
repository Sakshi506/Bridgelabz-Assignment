#!/bin/bash -x
count=0;
while [ 1 ]
do
roll1=$(($RANDOM%6+1))
roll2=$(($RANDOM%6+1))
count=$(($count+1));
if [ $roll1 -eq 6 ]
then
 if [ $roll2 -eq 6 ]
 then
 echo "YEE I got it"
break 
fi
fi
done
echo "count is $count"
