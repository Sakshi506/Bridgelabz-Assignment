#!/bin/bash -x
#program to roll a dice

echo -n "On rolling a dice you get:  "
echo $((RANDOM%6+1))
