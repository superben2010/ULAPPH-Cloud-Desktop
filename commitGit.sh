#!/bin/bash

echo Enter commit message 
read varMsg


if [[ $varMsg == "" ]]
then
	echo "ERROR: No commit message indicated"
	exit 0
fi

rm *.exe~
rm *.exe
rm main.go.deployed
rm my.db
rm my.db.lock
git add --all
git commit -m "$varMsg"
git push origin master
