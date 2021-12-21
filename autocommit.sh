#! /bin/bash

echo "autocommit ver0.1 start"

FILE=".statistics_check"

if [  "$?" = "0" ]; then

	if [ ! -e $FILE ]; then
		echo "1" >> $FILE
	fi

	state=$(cat .statistics_check)
	((plus=$state + 1))
	sed -i "s/$state/$plus/g" $FILE

	git add .
	git commit -m "Day $plus"
	git push

	echo "success"

else

    echo "fail"
    exit 1
fi

