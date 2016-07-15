module CrapsGame
  class Dice

  	attr_reader :result 

    def roll
      @result = rand(1..6)
    end

  end
end
