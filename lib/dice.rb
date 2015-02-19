class Dice
  attr_accessor :roll
  
  def initialize(number_of_dice = 5)
    @roll = random_dice(number_of_dice)
  end
  
  def random_dice(number_of_dice)
    (1..number_of_dice).map { |_| rand(6) + 1 }
  end
end

