
-------------------

nouns:
player: gets player id (1,2)
- possible this could just be a part of the game state
- Keeps track of lives

game: holds game state and updates turns. updates the score? (maybe the turn should update it) 
- Keeps track of how many turns have been played
- Controls game flow by feeding the user new questions on turn complete
- Tracks current player

number: randomizes a number between 1-20 and gives it to the turn/question object
- randomization of numbers
- randomization of operator
- passes info to turn/question

turn/question: pose a question to a user which has a correct response (use 'get.chomp' to get user input ?)
- question poser method for printing out question " puts "What does #{num1} #{operator} #{num2} equal?"
- gets.chomp for user input

score: keep track of the current score, update when a player incorrectly answers a question
- Reports the score after every turn is complete
- Determines game winner after a player score reaches 0



<!-- Which class will contain the game loop (where each instance of the loop is the other players turn)?
Which class should manage who the current_player is?
Which class(es) will contain user I/O and which will not have any? -->