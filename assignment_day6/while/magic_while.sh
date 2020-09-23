#!/bin/bash -x

echo "You will see a magic..!!"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Just think of a no between 1 - 100  :  "
#checking if no less than or greater than its half.
last=100;
first=0;
while [ $last -ne $first ]
do
mid=$(($(($last+$first))/2))
echo "Press 1 if your no is less than or equal to $mid"
echo "Press 2 if your no is greater than to $mid"
read choice;

 if [ $choice -eq 1 ]
 then
 last=$mid;
 elif [ $choice -eq 2 ]
 then
 first=$(($mid+1))
 fi
done

echo "**************************************************"
echo "I got you....you thought of $first"
