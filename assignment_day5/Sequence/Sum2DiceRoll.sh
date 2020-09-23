#!/bin/bash -x

#program will display addition of two rolled dice values

dice1=$((RANDOM%6+1))
dice2=$((RANDOM%6+1))
echo "Hey! you got " $((dice1+dice2))

