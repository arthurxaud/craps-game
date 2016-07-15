module CrapsGame

  def self.game
  	puts "Initialize Craps Game"
  	player = Player.new
  	first_roll = player.roll_dices
  	puts "Player rolled the dice and got #{first_roll}"
  	check_first_row(first_row)
  end

  def check_first_row(first_roll)
  	return "Win" if [7,11].include?(first_roll)
  	return "Lose" if [2,3,12].include?(first_roll)
  	return "Continue to play"
  end


  class Player

  	attr_reader :dice1, :dice2

  	def initialize
  		@dice1 = Dice.new
  		@dice2 = Dice.new
  	end

  	def  roll_dices
  	  @dice1.roll
  	  @dice2.roll
  	  @dice1.result + @dice2.result
  	end

  end
end

# CrapsGame::game
# gets
# CrapsGame::game
# gets
# CrapsGame::game
# gets
# CrapsGame::game
# gets
