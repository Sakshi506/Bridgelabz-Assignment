#!/bin/bash -x

win=0;
loss=0;
count=100;
echo "Let's play a game... You have 100 points"
echo "**************************************************"
while [[ $count -gt 1 ]] && [[ $count -le 200 ]]
do
if [ $((RANDOM%2+1)) -eq 1 ]
then
#echo "WINS 1 coin"
((count++));
#echo "available coins $count";
else
#echo "LOSE 1 coin"
((count--));
#echo "available coins $count";
fi
done
echo -n "Hey !!! you have * $count *  coins"
printf "\n"
if [ $count -lt 2 ]
then
echo "Sorry..!!! Better luck next time"
else
echo "Congrats...!! you won."
fi
