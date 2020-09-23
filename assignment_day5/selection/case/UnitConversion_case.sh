#!/bin/bash -x
echo -n "Enter a value that you want to convert   ->  "
read value
echo "Enter you choice to convert:"
echo -n "1 feet to inch || 2 Feet to Meter || 3 Inch to Feet ||4 Meter to Feet  -->  "
read n
printf "\n"
case $n in
1)
echo "$((value*12))"" inches" ;;
2)
echo "$((value/3))"" meters" ;;
3)
echo "$((value/12))"" feets" ;;
4)
echo "$((value*3))"" feet" ;;
*)
echo "invalid choice"
esac
