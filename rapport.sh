#!/bin/bash
tput clear
tput setaf 7
tput bold
tput cup 4 57; echo "************ Plateforme BANKING SYSTEM ************"
tput cup 6 57; echo "************  RAPPORT  ************"
tput cup 8 57; echo "1)Afficher tous les Compte (Ordre par Numéro Compte)"
tput cup 9 57; echo "2)Afficher tous les Compte (Ordre par Montant Solde)"
tput cup 10 57; echo "    ---"
tput cup 11 57; echo "    3)Préc"
tput cup 12 57; read -p "choix une option:  " rapport
case $rapport in
1) sh id_compte_rap.sh;;
2) sh solde_compte_rap.sh;;
3) sh menu.sh;;
4) sh log.sh;;
*) tput cup 25 65; tput blink; echo "\e[1;31m choix incorrect 👀 ! \e[0m"	
tput civis; sleep 2; tput cnorm 
sh rapport.sh;;
esac
