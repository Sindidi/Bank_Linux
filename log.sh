#!/bin/bash
tput clear
tput setaf 7
tput bold
tput setb 4
logi()
{
sh log.sh
}
tput cup 6 42; echo "************ Bienvenue sur la plateforme BANKING SYSTEM ************"
tput cup 10 55; echo "************Connexion************"
tput cup 12 65; read -p "Login: " log
if [ "$log" = "sindidi" ]
then tput cup 25 65; echo
else tput cup 25 60; tput blink; echo "\e[1;31m Login incorrect 👀 \e[0m"
tput civis; sleep 2; tput cnorm 
logi
exit
fi
stty -echo
tput cup 14 65;read -p "Password: " paswd
stty echo
if [ "$paswd" = "sindidi" ]
then tput cup 25 60; echo " "
else tput cup 25 60;  tput blink; echo "\e[1;31m Password incorrect 👀 \e[0m"
tput civis; sleep 2; tput cnorm 
logi
exit
fi
tput clear
tput cup 16 60; echo "Patientez-vous 🌑"
tput cup 16 78; tput civis ; sleep 0.80; tput cnorm 
tput cup 16 60; echo "Patientez-vous 🌒"
tput cup 16 78; tput civis ; sleep 0.80; tput cnorm 
tput cup 16 60; echo "Patientez-vous 🌓"
tput cup 16 78; tput civis ; sleep 0.80; tput cnorm 
tput cup 16 60; echo "Patientez-vous 🌔"
tput cup 16 78; tput civis ; sleep 0.80; tput cnorm 
tput cup 16 60; echo "Connexion réussie 🌕"
tput cup 16 81; tput civis ; sleep 0.80; tput cnorm 
sh menu.sh
