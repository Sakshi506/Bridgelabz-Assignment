#!/bin/bash -x
declare -A assDice_array
assDice_array=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0);

while [ 1 ]
do
value=$((RANDOM%6+1))
((assDice_array[$value]++))
#echo "$value is :  ${assDice_array[$value]}"
if [ ${assDice_array[$value]} -eq 11 ]
then
max=$value;
break
fi
done
echo "**************************************"
for key in "${!assDice_array[@]}"
do echo "$key comes => ${assDice_array[$key]}";  done
echo "***************************************"

min=1;
i=${assDice_array[1]}
for key in ${!assDice_array[@]}
do
if [ ${assDice_array[$key]} -lt $i ]
then
min=$key
fi
done
echo "Number $max comes max no of times => ${assDice_array[$max]}";
echo "Number $min comes min no of times => ${assDice_array[$min]} ";
