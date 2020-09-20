#!/bin/bash


while true;
do
	cd ~/src
	dir=$(pwd)

	if [ "$(ls -A /home/iven/src/Cryptage/ToDecrypt)" ]; then
		for file in $dir/Cryptage/ToDecrypt/*; do
	    		txt="$(basename "$file")"
			mv $dir/Cryptage/ToDecrypt/$txt $dir/Cryptage/ToDecrypt/todecrypt.txt
		
			cd $dir/Cryptage/bin
			python3 decrypt.py

			cd $dir/Cryptage/ToDecrypt
			rm $txt
		done
	fi
done


