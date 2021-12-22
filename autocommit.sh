#! /bin/bash

echo "autocommit ver0.1 start"

Dir="/home/fouri/autocommit"
FILE=".statistics_check"

if [  "$?" = "0" ]; then

	if [ ! -e $FILE ]; then
		echo "1" >> $Dir/$FILE
	fi

	plus=`expr $(cat $Dir/$FILE) + 1`

	sed -i "1s/.*/$plus/" $Dir/$FILE

	cd $Dir
	git add .
	git commit -m "Day $plus"
	git push origin master

	echo "success"

else

    echo "fail"
    exit 1
fi

