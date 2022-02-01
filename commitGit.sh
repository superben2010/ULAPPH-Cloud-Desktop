#!/bin/bash
# commitGit.sh 202004120946PM
if [[ $@ == "" ]]
then
	echo "ERROR: No commit message indicated"
	echo "Example:"
	echo "./commitGit.sh my sample mssage"
	exit 0
#else
#	echo "Commit message:"
#	echo "$@"
fi

rm *.exe~
rm *.exe
rm main.go.deployed
rm my.db
rm my.db.lock
git add --all
git commit -m '$@'
git push origin master

git add --all
git commit -m '$@'
#git push google master
git push origin master
