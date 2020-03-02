=begin
- 2 players - each with 3 lives. (p1_lives, p2_lives) 
  These should be instance variables that get updated as the game is 
  played.

- Alternating turns, 
  'Player 1: What does {random 1-20} plus {random 1-20} equal?'

- gets.chomp to allow the player to input an answer.

- check answer, if correct say so, if wrong say so
  and remove a life from that player.

- if a player's lives = 0 then the game is over,
  announce a winner and say 'game over' and 'good bye'

Nouns in the game: Players, Turns, Game, Answer.
 Game class will contain all the information about the
 players, 