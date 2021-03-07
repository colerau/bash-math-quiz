#!/bin/bash

quiz() {
  echo "Starting quiz..."
  random1=$(($RANDOM / 100))
  random2=$(($RANDOM / 100))
  result=$(($random1 + $random2))
  
  echo "What is $random1 + $random2?"
  read response
  if [ "$response" == $result ]
  then
    echo "You got it."
  else 
    echo "That is incorrect."
  fi
}

echo "Begin math quiz? (y/n)"
read response
if [ "$response" == "y" ] || [ "$response" == "Y" ]
then 
  SECONDS=0
  quiz
  echo "The quiz took you $SECONDS seconds to complete."
else 
  echo "Exiting..."
fi
