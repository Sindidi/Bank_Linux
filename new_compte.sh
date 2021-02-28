#!/bin/bash
tput clear
tput setaf 7
tput bold
tput cup 2 57; echo "************ Plateforme BANKING SYSTEM ************"
tput cup 4 57; echo "****************  Inscription  ******************"
ids=`wc -l doc.txt |cut -d " " -f1`
if [ $ids = 0 ]
then 
ids=2010
else
ids=`tail -1 doc.txt|cut -d":" -f1`
ids=`expr $ids + 1`
fi
dates=$(date +%D)
tput cup 6 60; echo "Numéro de compte / Auto : " $ids
tput cup 7 60; echo "Date d'ouverture / Auto : " $dates
tput cup 9 60; echo "Veillez-saisir votre Prénom et Nom"
tput cup 10 60; read name
tput cup 11 60; echo "Veillez-saisir votre Adresse"
tput cup 12 60; read adress
tput cup 13 60; echo "Veillez-saisir votre Contact"
tput cup 14 60; read contact
tput cup 15 60; echo "Veillez-choisir le type de compte Business / Personal"
tput cup 16 60; read types
tput cup 17 60; echo "Veillez-choisir votre Montant d'ouverture Min 100$"
tput cup 18 60; read amount
tput cup 19 60; echo "Veillez-identifier votre Statut"
tput cup 20 60; read statu
tput cup 21 60; echo "Voulez-vous enregistrer y/n"
tput cup 22 60; read reponse
case $reponse in
y)
echo "$ids:$dates:$name:$adress:$contact:$types:$amount:$statu" >> doc.txt
tput cup 24 65; tput blink; echo "\e[1;32m Données enregistrer ! \e[0m"
tput civis; sleep 0.1; tput cnorm 
tput cup 26 60; read -p "Appuyez sur Entrée pour sortir: " app
case $app in
*) 
sh transaction.sh;;
esac;;
n)
tput cup 24 65; tput blink;echo "\e[1;31m Données non enregistrer ! \e[0m"
tput civis; sleep 0.1; tput cnorm 
tput cup 26 60; read -p "Appuyez sur Entrée pour sortir: " app
case $app in
*) 
sh transaction.sh;;
esac;;
esac
