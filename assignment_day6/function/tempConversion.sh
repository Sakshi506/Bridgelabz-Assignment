#!/bin/bash

toCelsius()
{
echo -n "Enter the value in Fahrenheit to convert to Celsius -->  "
read degF;
if [[ $degF -ge 32 ]] && [[ $degF -le 212 ]]
then
degC=`awk 'BEGIN{ print ('$degF' - 32 ) * 0.55 }'`;
echo "The $degF°F in Celsius is $degC°C"
elif [ $degF -lt 32 ]
then
echo "You entered a value below freezing point"
elif [ $degF -gt 212 ]
then
echo "You entered value above boiling point"
fi

}
toFahrenheit()
{
echo -n  "Enter the value in Celsius to convert to Fahrenheit --> "
read degC;
if [[ $degC -ge 0 ]] && [[ $degC -le 100 ]]
then
degF=`awk 'BEGIN {print ('$degC'*1.8)+32}'`;

echo "The $degC°C in Fahrenheit is $degF°F"
elif [ $degC -lt 0 ]
then
echo "You entered value below freezing point"
elif [ $degC -gt 100 ]
then
echo "You entered value above boiling point"
fi
}

echo "Choose any of the following and your conversion will be ready...!"
echo -n "1- Celsius to Fahrenheit  |  2- Fahrenheit to Celsius  -->  "
read n
echo "-------------------------------------------------------------------------------------------"
printf "\n"
case $n in
1)
toFahrenheit
;;
2)
toCelsius
;;
*)
echo "Invalid Input..!"
esac
