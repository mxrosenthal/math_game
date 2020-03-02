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

Nouns: Players, Turns, Game, Answer.
Game class will contain all the information about the
state of the game (initialized to 'going') only changing
to 'over' at the end.

player class will contain number of lives (initialized to 3)
Each submitted answer will cause the turn to switch to the other player.

game = {
player_list: [1, 2]
game_over: false
}
Player1 = {
lives: 3
turn: true
}
Player2 = {
lives: 3
turn: false
}
