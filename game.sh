#!/bin/bash

cat instructions.txt

source var.sh

while [ $a -lt 10 ] 
do
  a=$((a + 1))
  Q="${questions[a-1]}"
  A="${answers[a-1]}"
  echo "${PURPLE}Question number: $a${RESET}"
  read -p "${!Q} " Inp
  if [ "$Inp" = "${!A}" ]; then
    n=$((n + 100))
    echo "${GREEN}Correct!${RESET}"
    echo "${YELLOW}Score=$n${RESET}"
    echo
    if [ $n -eq 700 ]; then
      echo "${GREEN}YOU WIN!!!${RESET}"
      echo "${GREEN}==========================================================================${RESET}"
echo
echo
      exit 1
    fi
  else
    n=$((n - 100)) 
    echo "${RED}Try Again!${RESET}"
    echo "${YELLOW}Score=$n${RESET}"
    echo
  fi
done

echo "${RED}YOU LOSE!!!${RESET}"
echo "${RED}==========================================================================${RESET}"
echo
echo


