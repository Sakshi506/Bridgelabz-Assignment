#!/bin/bash


h=0
t=0

echo "Let's play a game...!!";
echo "****************************************"
while [[ $h -le 11 ]] && [[ $t -le 11 ]]
do
        if [ $h -eq 11 ]
        then
        echo "Hurray...!!! Head won"
        break;
        elif [ $t -eq 11 ]
        then
        echo "Hurray....!!! Tails won"
        break;
        fi

        if [ $((RANDOM%2+1)) -eq 1 ]
        then
                echo "HEAD"
                ((h++));
                if [ $h -gt 11 ]
                then
                        break
                fi
        else
                echo "TAIL"
                ((t++));
                if [ $t -gt 11 ]
                then
                        break;
                fi
        fi


done
