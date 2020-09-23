#!/bin/bash -x


echo -n "Enter a no: "
read n
echo "-----------------------------------"

count=0;
for((counter=2; counter<=n/2; counter++))
do
#echo -n "$counter "
if [[ $n%$counter -eq o ]]
then
count+=1;
fi
done
if [[ $count -eq 0 ]]
then
echo "$n is a prime no"
else
echo "$n is not a prime no"
fi
printf "\n"

