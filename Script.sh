#!/bin/bash

user=$(whoami)
path=$PWD

function backup {
	tar -czvf backup.tar.gz $path
}

echo "Would you like to make backup? (y/n)  "
read choice
echo "Choice made $choice"

if [ $choice == "y" ]; then
	backup
	echo "Backup at $path"
else 
	echo "No backup was made."
fi

