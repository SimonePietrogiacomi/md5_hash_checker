#!/bin/bash

echo "This program will compare the hash of your file with the correct one"
echo "Remember: the first argument is the file path, while the second is the correct md5 hash string"

#./hashDistro.sh $1 (file path) $2 (hash expected)

local_hash="`md5sum $1 | awk '{print $1}'`"
correct_hash=$2

echo ""

if [ "$local_hash" == "$correct_hash" ]
then
	echo "Match! The md5 hash is correct"
else
	echo "Hash file doesn't match. Check if you put the correct md5 hash string, or try to download again the file"
fi
