class Player

  attr_accessor :lives, :name, :total

  def initialize(n)
    @name = n
    @lives = 3 
    @total = 3 
  end

  def lose_life
    if @lives > 0
      @lives -= 1
    else 
      puts "#{self.name} is dead."
    end
  end

  def info
    "#{self.name} has #{self.lives} left."
  end
end
