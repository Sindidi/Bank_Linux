#!/bin/bash
tput clear
tput setaf 7
tput bold
#!/bin/bash
tput clear
tput setaf 7
tput bold
sleep 0.15
tput cup 3 0; echo "|---------------------------------------------------------------------------------------------------------------------------------|"
sleep 0.15
tput cup 4 0; echo "|						RAPPORT POUR TOUS LES COMPTES TRIER PAR SOLDE                                     |"
sleep 0.15
tput cup 5 0; echo "|---------------------------------------------------------------------------------------------------------------------------------|"
sleep 0.15
tput cup 6 0; echo "|   ID |DADE D'OUVERTURE |           NOM ET PRENOM      |   ADRESSE  |  CONTACT | TYPE_COMPTE | SOLDED D'OUVERTURE | STATUT       |"
sleep 0.15
tput cup 7 0; echo "|_________________________________________________________________________________________________________________________________|"
sort -t ":" -k7 doc.txt > rapport_solde.txt
sleep 0.15
l=8
while read line;
do
sleep 0.15
tput cup $l; echo "|`echo $line | cut -d":" -f1`"
sleep 0.15
tput cup $l 7; echo  "| `echo $line | cut -d":" -f2`"
sleep 0.15
tput cup $l 25; echo "| `echo $line | cut -d":" -f3`"
sleep 0.15
tput cup $l 56; echo "| `echo $line | cut -d":" -f4`"
sleep 0.15
tput cup $l 69; echo "| `echo $line | cut -d":" -f5`"
sleep 0.15
tput cup $l 80; echo "| `echo $line | cut -d":" -f6`"
sleep 0.15
tput cup $l 94; echo "|\e[1;32m `echo $line | cut -d":" -f7`\e[0m"
sleep 0.15
tput cup $l 115; echo "| `echo $line | cut -d":" -f8`"
sleep 0.15
tput cup $l 130; echo "|"
l=`expr $l + 1`
done < rapport_solde.txt 
sleep 0.15
echo "|_________________________________________________________________________________________________________________________________|"
sleep 0.15
echo " "
echo "Voilà la liste de tous les comptes, trier par les solde"
tput civis; read -p "Appuyez sur Entrée pour sortir" app;tput cnorm
case $app in
*) sh rapport.sh;;
esac
