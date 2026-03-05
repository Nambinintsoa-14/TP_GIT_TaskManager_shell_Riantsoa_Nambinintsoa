#!/bin/bash

# fonction 1

if [ -f "tasks.txt" ] 
then
	echo " the file already exists."
else
	touch  "tasks.txt" && echo "The file has been created successfully."
fi 
