class Game

  attr_accessor :game_over, :num_players, :count
  attr_reader :num1, :num2, :comp_ans

  def initialize()
    @game_over = false
    @num_players = 2
    @count = 0
    @player_array = []
    pick_players
    game_loop
  end

  def pick_players
    puts "Enter player 1 name:"
    player1 = gets.chomp
    @p1 = Player.new(player1)
    puts "Enter player 1 name:"
    player2 = gets.chomp
    @p2 = Player.new(player2)
    @player_array.push(@p1).push(@p2)
  end

  def game_loop
    while !@game_over
      puts "Count is #{count}."
      player = @player_array[@count % 2].name
      x = new_turn(player)
      if x
        puts "Correct! Good job, #{player}"
        print_score
        @count += 1
      else
        puts "Wrong... #{player} loses a life."
        @player_array[@count % 2].lose_life
        print_score
        if @player_array[@count % 2].lives === 0
          end_game
        end
        @count += 1
      end
    end 
  end

  def end_game()
    @count += 1
    player = @player_array[@count % 2].name
    @game_over = true
    puts "#{player} wins with a score of #{@player_array[@count % 2].lives}/3"
    puts "---- GAME OVER ----"
    puts "Good Bye!"
  end

  def new_turn(person)
    puts "---- NEW TURN ----"
    @num1 = rand(20)
    @num2 = rand(20)
    @comp_ans = @num1 + @num2
    puts "#{person}: What is #{num1} + #{num2}?"
    @human_ans = gets.chomp.to_i
    return @human_ans === @comp_ans
  end

  def print_score
    @P1 = @player_array[0].name
    @P2 = @player_array[1].name
    @P1_score = @player_array[0].lives
    @P2_score = @player_array[1].lives
    @MAX = @player_array[0].total
    puts "#{@P1}: #{@P1_score}/#{@MAX} vs. #{@P2}: #{@P2_score}/#{@MAX}"
  end
end

