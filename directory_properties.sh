#!/usr/bin/env bash
Black="$(tput setaf 0)"
BlackBG="$(tput setab 0)"

Red="$(tput setaf 1)"
RedBG="$(tput setab 1)"

Green="$(tput setaf 2)"
GreenBG="$(tput setab 2)"

Yellow="$(tput setaf 3)"
YellowBG="$(tput setab 3)"

Blue="$(tput setaf 4)"
BlueBG="$(tput setab 4)"

Purple="$(tput setaf 5)"
PurpleBG="$(tput setab 5)"

Cyan="$(tput setaf 6)"
CyanBG="$(tput setab 6)"

White="$(tput setaf 7)"
WhiteBG="$(tput setab 7)"

reset=`tput sgr0` # turns off all atribute
Bold=$(tput bold)
Normal=$(tput sgr0)

echo ""
echo "${Purple}${Bold} Type ${reset}:" 
 $file $1
echo "" 
echo "${Red}${Bold} Location ${reset}:
 "$PWD/$1"" 
echo "" 
echo "${Green}${Bold} Size ${reset}: 
 $(du -sh $1)"
echo "" 
echo "${Yellow}${Bold} Contains ${reset}: 
 $(ls -lR $1 | egrep -c '^-') Files, $(ls -lR $1 | grep ^d | wc -l) Folders"
echo ""
echo "${Blue}${Bold} Sub-directories ${reset}: 
 $(du -sh $1/*/)"
