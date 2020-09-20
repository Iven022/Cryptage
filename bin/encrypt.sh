#!/bin/bash

if [ -z "$(ls -A /home/iven/Encryption/ToEncrypt)" ]; then
	echo "Empty"
else
	for file in /home/iven/Encryption/ToEncrypt/*; do
    		txt="$(basename "$file")"
		mv /home/iven/Encryption/ToEncrypt/$txt /home/iven/Encryption/ToEncrypt/tocrypt.txt

		python3 encrypt.py
	done
fi
