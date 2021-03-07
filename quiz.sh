quiz() {
  echo "Started quiz"
}

echo "Begin math quiz? (y/n)"
read response
if [ "$response" == "y" ] || [ "$response" == "Y" ]
then 
  quiz
else 
  echo "Exiting..."
fi

