# Nouns for Classes

  - 4 separate files => require one another

# Main
  
  - 

# Game
  - keeps track of game turns
  - determines current player
    - current_player
  - contains the main game loop
    - logic for right or wrong
  - takes user input for the answer from each player and checks if it is correct
    - gets.chomp
    - rand1 + rand2 = gets.chomp
  - determines winner
  - variables: players, life
  - methods: numbers?, check_answer, display_scores, game_over?, declare_winner

# Players
  - create players
  - keeps track of the scores/lives
  - variables: player, score
  - methods: 

# Questions
  - creates questions using two random numbers
    - num1
    - num2
    - rand(1..20)
  - ask qustion
    - def ask
      - what's num1 + num2?