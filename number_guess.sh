#!/bin/bash
PSQL="psql --username freecodecamp --dbname number_guessing -t --no-align -c"

echo "Enter your username:"
read USERNAME

DATA=$($PSQL "SELECT COUNT(*) AS games_played, MIN(guesses) AS best_game FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME';")
IFS="|" read GAMES_PLAYED BEST_GAME <<< $DATA

if [[ -z $BEST_GAME ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  echo $($PSQL "INSERT INTO users(username) VALUES('$USERNAME');") >> /dev/null
else
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

GUESSES=0
SECRET=$(( RANDOM % 1000 + 1 ))

echo "Guess the secret number between 1 and 1000:"

while [[ $GUESS != $SECRET ]]
do
  read GUESS
  
  if [[ ! $GUESS =~ [0-9]+ ]]
  then
    echo "That is not an integer, guess again:"
    continue
  fi

  GUESSES=$(( GUESSES + 1 ))

  if [[ $GUESS -gt $SECRET ]]
  then
    echo "It's lower than that, guess again:"
  elif [[ $GUESS -lt $SECRET ]]
  then
    echo "It's higher than that, guess again:"
  fi
done
