#!/bin/bash

# Assigning the psql command with specific options to the PSQL variable for easier reuse
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Function to display the start menu and handle user input
STARTMENU() {
  echo -e "\nEnter your username:" # Prompt for username
  read USERNAME # Read the username input

  # Query the database to find the user ID for the given username
  USERID=$($PSQL "SELECT user_id FROM users WHERE name='$USERNAME'")

  # Check if the user ID exists
  if [[ $USERID ]]; then
    # If the user exists, retrieve the number of games played and the best game (fewest guesses)
    GAMES_PLAYED=$($PSQL "SELECT COUNT(user_id) FROM games WHERE user_id=$USERID")
    BEST_GUESS=$($PSQL "SELECT MIN(number_guesses) FROM games WHERE user_id=$USERID")
    echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GUESS guesses."
    GAME # Call the GAME function
  else
    # If the user does not exist, insert the new user into the users table
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
    INSERT_USER=$($PSQL "INSERT INTO users(name) VALUES('$USERNAME')")
    # Retrieve the user ID for the newly inserted user
    USERID=$($PSQL "SELECT user_id FROM users WHERE name='$USERNAME'")
    GAME # Call the GAME function
  fi
}

# Function to handle the number guessing game
GAME() {
  # Generate a random number between 1 and 1000
  RANDOMNUM=$((1 + $RANDOM % 1000))
  GUESS=1 # Initialize the guess counter
  echo "Guess the secret number between 1 and 1000:" # Prompt to start guessing

  # Loop until the correct number is guessed
  while true; do
    read NUM # Read the guessed number
    if [[ ! $NUM =~ ^[0-9]+$ ]]; then
      # If the input is not a valid integer, prompt again
      echo -e "\nThat is not an integer, guess again:"
    else
      if [[ $NUM -eq $RANDOMNUM ]]; then
        # If the guessed number is correct, congratulate the user
        echo -e "\nYou guessed it in $GUESS tries. The secret number was $RANDOMNUM. Nice job!"
        break # Exit the loop
      elif [[ $NUM -lt $RANDOMNUM ]]; then
        # If the guessed number is too low, prompt to guess higher
        echo -e "\nIt's higher than that, guess again:"
      else
        # If the guessed number is too high, prompt to guess lower
        echo -e "\nIt's lower than that, guess again:"
      fi
      GUESS=$((GUESS + 1)) # Increment the guess counter
    fi
  done

  # Insert the game result into the games table
  INSERTGAME=$($PSQL "INSERT INTO games(user_id, number_guesses) VALUES($USERID, $GUESS)")
}

# Call the STARTMENU function to begin the script
STARTMENU
