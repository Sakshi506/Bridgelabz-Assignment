#!/bin/bash -x
echo -n "Enter a no:"
#program to print the day w.r.t.entered no
read no
echo "-------------------------"

if [ $no -eq 1 ]
then echo "MONDAY"
elif [ $no -eq 2 ]
then echo "TUESDAY"
elif [ $no -eq 3 ]
then echo "WEDNESDAY"
elif [ $no -eq 4 ]
then echo "THURSDAY"
elif [ $no -eq 5 ]
then echo "FRIDAY"
elif [ $no -eq 6 ]
then echo "SATURDAY"
elif [ $no -eq 7 ]
then echo "SUNDAY"
else
echo "INVALID INPUT"
fi
