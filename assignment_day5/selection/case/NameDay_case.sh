#!/bin/bash -x

#A program to display week day by its corresponding no
echo -n "Enter one digit number I'll name a day : "
read n
echo "-------------------------------------------------------------------"
case $n in
1)
echo "MONDAY" ;;
2)
echo "TUESDAY" ;;
3)
echo "WEDNESDAY" ;;
4)
echo "THURSDAY" ;;
5)
echo "FRIDAY" ;;
6)
echo "SATURDAY" ;;
7)
echo "HURRAY !!! IT'S SUNDAY " ;;
*)
echo "Please a valid input" ;;
esac
