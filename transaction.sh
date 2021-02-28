#!/bin/bash
tput clear
tput setaf 7
tput bold
tput cup 4 57; echo "************ Plateforme BANKING SYSTEM ************"
tput cup 6 57; echo "************  TRANSACTION  ************"
tput cup 8 70; echo "1) Nouveau compte"
tput cup 9 70; echo "2) Compte de mise à jour"
tput cup 10 70; echo "    ---"
tput cup 11 70; echo "    3)Préc"
tput cup 12 70; read -p "choix une option:  " tran
case $tran in 
1) sh new_compte.sh;;
2) sh up_compte.sh;;
3) sh menu.sh;;
*) tput cup 25 60; tput blink; echo "\e[1;31m choix incorrect 👀 ! \e[0m"	
tput civis; sleep 2; tput cnorm 
sh transaction.sh;;
esac
