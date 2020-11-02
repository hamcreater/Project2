#!/bin/bash
# changes to hamcreater code
user=$(whoami)
path=$PWD

function backup {
	tar -czvf backup.tar.gz $path
}

	echo "Would you like to make backup? (y/n)" # indented and double 
	# quotes merged closer together
	read choice #indention using tab
	echo "Choice made $choice" # indention using tab

if [ $choice == "y" ]; then
	backup
	echo "Backup at $path"
else 
	echo "No backup was made."
fi

