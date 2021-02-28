#!/bin/bash
tput clear
tput setaf 7
tput bold
tput cup 2 50; echo "************ Bienvenue sur la plateforme BANKING SYSTEM ************"
tput cup 4 57; echo "************ Plateforme BANKING SYSTEM ************"
tput cup 6 57; echo "************  MENU Principal  ************"
tput cup 8 70; echo "1:Transaction "
tput cup 9 70; echo "2:Recherche "
tput cup 10 70; echo "3:Rapport "
tput cup 11 70; echo " ---"
tput cup 12 70; echo "  4:Exit"
tput cup 14 65; read -p " Choisir une option: " option
case $option in
1) sh transaction.sh;;
2) sh recherche.sh;;
3) sh rapport.sh;;
4)
clear
exit
;;
*) 
tput cup 25 65; tput blink;echo "\e[1;31m choix incorrect 👀 ! \e[0m"	
tput civis; sleep 2; tput cnorm 
sh menu.sh;;
esac
