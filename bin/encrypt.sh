#!/bin/bash

while true;
do
	cd ~/src
	dir=$(pwd)

	if [ "$(ls -A /home/iven/src/Cryptage/ToEncrypt)" ]; then #checking if folder have content
		for file in $dir/Cryptage/ToEncrypt/*; do #passing through each file
	    		txt="$(basename "$file")" #saving file name in variable
			mv $dir/Cryptage/ToEncrypt/$txt $dir/Cryptage/ToEncrypt/tocrypt.txt #renaming the file for the .py code to not bug
		
			cd $dir/Cryptage/bin
			python3 encrypt.py #running the .py encryption code

			cd $dir/Cryptage/ToEncrypt
			rm $txt #deleting the file
		done
	fi
done
