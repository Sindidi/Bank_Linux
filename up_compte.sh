#!/bin/bash
tput clear
tput setaf 7
tput bold
tput cup 3 57; echo "************ Plateforme BANKING SYSTEM ************"
tput cup 5 57; echo "************  Update  ************"
chr()
{
tput cup 7 57; echo -n "Entrer le numero d'inscription : " 
read ids
rech=`grep -c $ids doc.txt`
if [ $rech -gt 0 ]
then
line=`grep -n $ids doc.txt`
line_no=`echo $line | cut -d":" -f1`
dates=`echo $line | cut -d":" -f3`
name=`echo $line | cut -d":" -f4`
adress=`echo $line | cut -d":" -f5`
contact=`echo $line | cut -d":" -f6`
types=`echo $line | cut -d":" -f7`
amount=`echo $line | cut -d":" -f8`
statu=`echo $line | cut -d":" -f9`
tput cup 9 57; echo " C'est ça que vous cherchez !"
tput cup 11 57; echo "l'identifiant: $ids"
tput cup 12 57; echo "Ligne N°: $line_no  " 
tput cup 13 57; echo "Nom et Prénom : $name"
tput cup 14 57; echo "Date d'Ouverture: $dates"
tput cup 15 57; echo "Adresse: $adress"
tput cup 16 57; echo "Contact: $contact"
tput cup 17 57; echo "Solde d'Ouverture: $amount"
tput cup 18 57; echo "Type de compte: $types"
tput cup 19 57; echo "Statut: $statu"
else
echo "id invalide"
exit
fi
}
chr
tput cup 21 57; echo "****** Veillez Saisir vos nouveau données ******"
tput cup 22 57; echo "Ligne N°: $line_no" 
tput cup 23 57; echo "l'identifiant: $ids"
tput cup 24 57; echo "l'identifiant: $dates"
tput cup 25 57; echo "Modifier votre nom"
tput cup 26 57; read  newname
tput cup 27 57; echo "Modifier votre Adresse"
tput cup 28 57; read  newadress
tput cup 29 57; echo "Modifier votre Contact"
tput cup 30 57; read  newcontact
tput cup 31 57; echo "Modifier votre Type de Compte"
tput cup 32 57; read  newtypes
tput cup 33 57; echo "Modifier votre Statut"
tput cup 34 57; read  newstatu
tput cup 35 57; echo "Voulez-vous enregistrer y/n"
tput cup 36 57; read reponse
case $reponse in
y)sed "$line_no s/$name/$newname/" "doc.txt" > file.tmp && mv file.tmp "doc.txt"
sed "$line_no s/$adress/$newadress/" "doc.txt" > file.tmp && mv file.tmp "doc.txt"
sed "$line_no s/$contact/$newcontact/" "doc.txt" > file.tmp && mv file.tmp "doc.txt"
sed "$line_no s/$types/$newtypes/" "doc.txt" > file.tmp && mv file.tmp "doc.txt"
sed "$line_no s/$statu/$newstatu/" "doc.txt" > file.tmp && mv file.tmp "doc.txt"
tput cup 38 57; tput blink; echo "\e[1;32m Vos donées sont mis a jour successfully ! \e[0m"
tput civis; sleep 0.1; tput cnorm 
tput cup 40 57; read -p "Appuyez sur Entrée pour sortir: " app
case $app in
*) sh transaction.sh;;
esac;;
n)
tput cup 38 57; tput blink; echo "\e[1;31m Mis a jour annuler ! \e[0m"
tput civis; sleep 0.1; tput cnorm 
tput cup 40 57; read -p "Appuyez sur Entrée pour sortir: " app
case $app in
*) sh transaction.sh;;
esac;;
esac
