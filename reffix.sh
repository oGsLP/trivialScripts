#!/bin/sh
# filename: reffix.sh
# author: oGs Legolas
# date: 20/01/23 19:49

if [ $# != 2 ]; then
	echo "  Wrong usage! Please use like this: bash reffix.sh jpg JPG"
	echo "  1.jpg => 1.JPG"
	exit 1;
fi

counter=0

for i in *.$1
do
	if [ -e $i ]; then
		counter=`expr $counter + 1`
		echo "  $counter) $i changed to `basename $i .$1`.$2 !"
		mv $i `basename $i .$1`.$2
	fi
done

echo "Totally, $counter files' suffixs have been changed!"
