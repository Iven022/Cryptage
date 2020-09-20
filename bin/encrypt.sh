#!/bin/bash

while true;
do
	cd ~/src
	dir=$(pwd)

	if [ "$(ls -A /home/iven/src/Cryptage/ToEncrypt)" ]; then
		for file in $dir/Cryptage/ToEncrypt/*; do
	    		txt="$(basename "$file")"
			mv $dir/Cryptage/ToEncrypt/$txt $dir/Cryptage/ToEncrypt/tocrypt.txt
		
			cd $dir/Cryptage/bin
			python3 encrypt.py

			cd $dir/Cryptage/ToEncrypt
			rm $txt
		done
	fi
done
