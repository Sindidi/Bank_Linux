#!/bin/bash
tput clear
tput setaf 7
tput bold
tput cup 4 57; echo "************ Plateforme BANKING SYSTEM ************"
tput cup 6 57; echo "************  RECHERCHE  ************"
tput cup 8 57; echo "1)Rechercher les détails du Compte (par numéro compte)"
tput cup 9 57; echo "2)Rechercher les détails du Compte (par nom)"
tput cup 10 57; echo "    ---"
tput cup 11 57; echo "    3)Préc"	
tput cup 12 57; read -p "choix une option:  " recherch
case $recherch in
1) sh id_compte_ch.sh;;
2) sh nom_compte_ch.sh;;
3) sh menu.sh;;
*) tput cup 25 60; tput blink; echo "\e[1;31m choix incorrect 👀 ! \e[0m"
tput civis; sleep 2; tput cnorm 
sh recherche.sh;;
esac

