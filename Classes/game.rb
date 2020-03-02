class Game

  attr_accessor :game_over, :num_players, :count
  attr_reader :num1, :num2, :comp_ans

  def initialize(n)
    @game_over = false
    @num_players = n
    @count = 0
    @player_array = []
    pick_players
    start_game
  end

  def pick_players
    puts "Enter player 1 name:"
    player1 = gets.chomp
    @p1 = Player.new(player1)
    puts "Enter player 1 name:"
    player2 = gets.chomp
    @p2 = Player.new(player2)
    puts "player 1 is #{@p1}, player 2 is #{@p2}."
    @player_array.push(@p1).push(@p2)
    puts "Player array is #{@player_array}."
  end

  def start_game
    while !@game_over
      puts "Count is #{count}."
      player = @player_array[@count % 2].name
      x = self.new_turn(player)
      if x
        puts "Correct! Good job, #{player}"
        puts "#{@player_array[0].name}: #{@player_array[0].lives}/#{@player_array[0].total} vs. #{@player_array[1].name}: #{@player_array[1].lives}/#{@player_array[1].total}"
        @count += 1
      else
        puts "Wrong... #{player} loses a life."
        # puts "#{player} had #{@player_array[@count % 2].lives}"
        @player_array[@count % 2].lose_life
        # puts "Now #{player} has #{@player_array[@count % 2].lives}"
        puts "#{@player_array[0].name}: #{@player_array[0].lives}/#{@player_array[0].total} vs. #{@player_array[1].name}: #{@player_array[1].lives}/#{@player_array[1].total}"
        if @player_array[@count % 2].lives === 0
          self.end_game
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
    puts "#{person}: What is #{num1} + #{num2}? Comp will say #{comp_ans}"
    @human_ans = gets.chomp.to_i
    if @human_ans === @comp_ans
      return true
    else 
      return false
    end
  end

end

