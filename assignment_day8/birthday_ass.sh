#!/bin/bash -x
#initialising two associative arrays
year92=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0 [7]=0 [8]=0 [9]=0 [10]=0 [11]=0 [12]=0);
year93=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0 [7]=0 [8]=0 [9]=0 [10]=0 [11]=0 [12]=0);

#generating random months for 50 objects
count=1;
while [ $count -le 50 ]
do
n=$((RANDOM%2))
case $n in
0)
value=$((RANDOM%12+1))
((year92[$value]++))
;;
1)
value=$((RANDOM%12+1))
((year93[$value]++))
;;
esac
count=$(($count+1));
done

#calculating births in same month.
for key in ${!year92[@]}
do
echo "Month $key has - $((${year92[$key]} + ${year93[$key]})) births."
done
