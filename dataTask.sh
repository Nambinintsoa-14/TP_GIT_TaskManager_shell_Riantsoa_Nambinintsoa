#!/bin/bash

# fonction 1
if [ -f "tasks.txt" ] 
then
	echo " Fichier deja existant."
else
	touch  "tasks.txt" && echo "The file has been created successfully."
fi 


# fonction 2
if [ -f "tasks.txt" ]
then
	cat "tasks.txt"
else
	echo "Base non initialisée!"
fi


