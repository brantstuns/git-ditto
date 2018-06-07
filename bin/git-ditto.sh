#!/usr/bin/env bash

# so the bin directory will be the root folder ∕
cd $(dirname $0)

# so that I can easily color the output text 🎨
source ../resources/colors

loader () {
  echo -ne '🤲🤲🤲             (33%)\r'
  sleep .7
  echo -ne '🤲🤲🤲 🤲🤲🤲              (66%)\r'
  sleep .5
  echo -ne '🤲🤲🤲 🤲🤲🤲 🤲🤲🤲 🤲🤲🤲 🌶   (100%)\r\n'
  sleep .2
  echo -ne '🥂 🥂 🥂\r'
}

cat ../resources/logo.txt
while true; do
  read -p "$(echo -e "${On_Green}what remote repository do you want to keep in sync with your pushes?${no_color} ")" reposervice

  case $reposervice in

      "" )
        echo -e "\n\n${Red}☟${no_color}\n\n${BYellow}enter the remote origin like: ${UWhite}git@gitlab.com:username/coolrepo.git${no_color}\n\n${Red}☝${no_color}\n\n"
        ;;

      * )
        currentremote="$(git config --get remote.origin.url)"
        git remote set-url --add --push origin $currentremote
        git remote set-url --add --push origin $reposervice
        loader
        break
        ;;

  esac
done