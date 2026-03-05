#!/bin/bash

initialiser_base() {
if [ -f "tasks.txt" ]
then
	echo " Fichier deja existant."
else
	touch  "tasks.txt" && echo "The file has been created successfully."
fi
}


affiche_toutes_taches() {
if [ -f "tasks.txt" ]
then
	cat "tasks.txt"
else
	echo "Base non initialisée!"
fi
}



sauvegader_base() {
if [ -f "tasks.txt" ]
then
	cp tasks.txt  tasks_backup.txt
	echo "sauvegarde creee: tasks_backup.txt"
else
	echo "Base non initialisée!"
fi
}

restaurer_base() {
if [ -f "tasks_backup.txt" ]
then
	cp tasks_backup.txt  tasks.txt
	echo "Base restaurée depuis la sauvegarde"
else
	echo "Aucune sauvegarde disponible"
fi
}

#supprimer_base() {
if [ -f "tasks.txt" ]
then
	echo "Etes-vous sur de vouloir supprimer ? (yes/no)"
	read answer
		if [ "$answer" == "yes" ]
		then
			rm tasks.txt
			echo "fichier efface"
		elif [ "$answer" == "no" ]
		then
			echo "suppression annulee"
		else
			echo "reponse invalide"
		fi

else
	echo "base non existante"
fi
#}


