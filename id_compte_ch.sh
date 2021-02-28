#!/bin/bash
tput clear
tput setaf 7
tput bold
tput cup 4 57; echo "************ Plateforme BANKING SYSTEM ************"
tput cup 6 57; echo "************  Rechercher par Id  ******************"
tput cup 8 57;echo -n "Entrer le numero d'inscription : " 
read ids
rech=`grep -c $ids doc.txt`
if [ $rech -gt 0 ]
then
line=`grep -n $ids doc.txt`
tput cup 10 57;echo "Numéro d'inscription: `echo $line | cut -d":" -f2`"
tput cup 11 57;echo "Date d'ouverture: `echo $line | cut -d":" -f3`"
tput cup 12 57;echo "Nom et Prénom: `echo $line | cut -d":" -f4`"
tput cup 13 57;echo "Adresse: `echo $line | cut -d":" -f5`"
tput cup 14 57;echo "Contacte: `echo $line | cut -d":" -f6`"
tput cup 15 57;echo "Type de compte: `echo $line | cut -d":" -f7`"
tput cup 16 57;echo "Solde d'ouverture: `echo $line | cut -d":" -f8`"
tput cup 17 57;echo "Statut: `echo $line | cut -d":" -f9`"
else 
tput cup 20 65; tput blink;echo "\e[1;31m Numéro_Id incorrect 👀 ! \e[0m"
tput civis; sleep 2; tput cnorm 
sh id_compte_ch.sh
fi
tput civis; sleep 0.1; tput cnorm 
tput civis; tput cup 20 57;read -p "Appuyez sur Entrée pour sortir" app; tput cnorm 
case $app in
*) sh recherche.sh;;
esac
