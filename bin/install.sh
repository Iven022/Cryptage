#! /bin/bash

#checking if ~/src already exists and if not create it.
if [[ -d ~/src ]] 
then
	echo "No need to create the src folder, you already have one."
else 
	sudo mkdir ~/src 	
fi

#going to the src folder and checking if Cryptage has already been clone there and if not, clone it.
cd ~/src 
if [[ -d ~/src/Cryptage ]]
then
	echo "No need to clone the Embauche repository in the src folder, you already have it."
else 
	sudo git clone https://github.com/Iven022/Cryptage.git
fi


sudo cp -f ~/src/Cryptage/bin/encrypt.sh ~/bin/encrypt.sh
sudo chmod +x ~/bin/encrypt.sh #giving it executable rights

sudo cp -f ~/src/Cryptage/bin/decrypt.sh ~/bin/decrypt.sh
sudo chmod +x ~/bin/decrypt.sh #giving it executable rights

sudo cp -f ~/src/Cryptage/bin/encrypt.service /etc/systemd/system/encrypt.service
sudo chmod 644 /etc/systemd/system/encrypt.service

sudo cp -f ~/src/Cryptage/bin/decrypt.service /etc/systemd/system/decrypt.service
sudo chmod 644 /etc/systemd/system/decrypt.service

sudo sudo systemctl start encrypt.service 
sudo sudo systemctl enable encrypt.service

sudo sudo systemctl start decrypt.service 
sudo sudo systemctl enable decrypt.service

echo -e " \e[5mInstallation Completed \e[25m!"
