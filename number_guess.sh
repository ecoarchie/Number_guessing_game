#! /bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

# if [[ $1 ]]
# then
#   USERNAME=$1
# else
#   echo "Enter your username:"
#   read USERNAME
# fi

echo -e "\nEnter your username:"
read USERNAME


USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
# if it's a new user
if [[ -z $USER_ID ]]
then
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES ('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
else
  # if this user exists in db
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = $USER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games WHERE user_id = $USER_ID")
  echo -e "\nWelcome back, $USERNAME! You have played $(echo $GAMES_PLAYED | sed -r 's/^ *| *$//g') games, and your best game took $(echo $BEST_GAME | sed -r 's/^ *| *$//g') guesses."
fi

# insert new game ingo into games
INSERT_GAME_INIT=$($PSQL "INSERT INTO games (user_id, number_of_guesses) VALUES ($USER_ID, 0)")
GAME_ID=$($PSQL "SELECT MAX(game_id) FROM games WHERE user_id = $USER_ID")

# get the random number
RANDOM_NUMBER=$((1 + $RANDOM % 1000))

echo -e "\nGuess the secret number between 1 and 1000:"

while :

do
  read USER_GUESS
  UPDATE_GUESSES_RESULT=$($PSQL "UPDATE games SET number_of_guesses = number_of_guesses + 1 WHERE game_id = $GAME_ID")
  
  if [[ ! $USER_GUESS =~ ^[0-9]+$ ]] || [[ -z $USER_GUESS ]]
  then
    echo -e "\nThat is not an integer, guess again:"
  else
    if [[ $USER_GUESS -eq $RANDOM_NUMBER ]]
    then
      break
    fi

    if [[ $USER_GUESS -gt $RANDOM_NUMBER ]]
    then
      echo -e "\nIt's lower than that, guess again:"
    fi

    if [[ $USER_GUESS -lt $RANDOM_NUMBER ]]
    then
      echo -e "\nIt's higher than that, guess again:"
    fi
  fi
done

# number guessed
NUMBER_OF_GUESSES=$($PSQL "SELECT number_of_guesses FROM games WHERE game_id = $GAME_ID")
echo -e "\nYou guessed it in $(echo $NUMBER_OF_GUESSES | sed -r 's/^ *| *$//g') tries. The secret number was $RANDOM_NUMBER. Nice job!"
