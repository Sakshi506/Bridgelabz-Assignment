#!/bin/bash -x

echo -n "Enter a no: "
read n

len=${#n};

if [ $len -eq 4 ]
then
	u_p=$(($n%10));



	echo "unit place = $u_p";
	n=$(($n/10));

	t_p=$(($n%10));
	echo "tens place = $t_p";
	n=$(($n/10));

	h_p=$(($n%10));
	echo "hundred place = $h_p";
	n=$(($n/10));

	th_p=$(($n%10));
	echo "Thousands place = $th_p";

elif [ $len -eq 3 ]
then
	u_p=$(($n%10));
    echo "unit place = $u_p";
    n=$(($n/10));

    t_p=$(($n%10));
    echo "tens place = $t_p";
    n=$(($n/10));

    h_p=$(($n%10));
    echo "hundred place = $h_p";

elif [ $len -eq 2 ]
then
	u_p=$(($n%10));
    echo "unit place = $u_p";
    n=$(($n/10));

    t_p=$(($n%10));
    echo "tens place = $t_p";

elif [ $len -eq 1 ]
then
	u_p=$(($n%10));
    echo "unit place = $u_p";
else
	echo "Sorry wea are limited to 10000";
fi
