class Dice
  attr_accessor :roll
  
  def initialize(number_of_dice = 5)
    number_of_dice = number_of_dice
    @roll = Array.new(number_of_dice)
    random_dice(roll)
  end
  
  def random_dice(roll)
    roll.map! { |x| x = rand(6) + 1}
  end
end

