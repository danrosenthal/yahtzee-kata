require 'aces'
require 'twos'
require 'threes'
require 'fours'
require 'fives'
require 'sixes'
require 'three_kind'
require 'four_kind'
require 'full_house'

class Categories
  attr_reader :category_score
  
  def initialize(roll)
    @category_score = {}
    
    aces(roll)
    twos(roll)
    threes(roll)
    fours(roll)
    fives(roll)
    sixes(roll)
    three_kind(roll)
    four_kind(roll)
    full_house(roll)
    sm_straight(roll)
    lg_straight(roll)
    yahtzee(roll)
    chance(roll)
  end
  
  def aces(roll)
    category_score[:aces] = Aces.new.score(roll)
  end
  def twos(roll)
    category_score[:twos] = Twos.new.score(roll)
  end
  def threes(roll)
    category_score[:threes] = Threes.new.score(roll)
  end
  def fours(roll)
    category_score[:fours] = Fours.new.score(roll)
  end
  def fives(roll)
    category_score[:fives] = Fives.new.score(roll)
  end
  def sixes(roll)
    category_score[:sixes] = Sixes.new.score(roll)
  end
  def three_kind(roll)
    category_score[:three_kind] = ThreeKind.new.score(roll)
  end
  def four_kind(roll)
    category_score[:four_kind] = FourKind.new.score(roll)
  end
  def full_house(roll)
    category_score[:full_house] = FullHouse.new.score(roll)
  end
  
  def sm_straight(roll)
    roll_sorted = roll.sort
    category_score[:sm_straight] = 30 if roll_sorted[0..3] == [1, 2, 3, 4] || roll_sorted[0..3] == [2, 3, 4, 5] || roll_sorted[1..4] == [3, 4, 5, 6] || roll_sorted[0..3] == [3, 4, 5, 6]
  end
  
  def lg_straight(roll)
    roll_sorted = roll.sort
    category_score[:lg_straight] = 40 if roll_sorted == [1, 2, 3, 4, 5] || roll_sorted == [2, 3, 4, 5, 6]
  end
  
  def yahtzee(roll)
    category_score[:yahtzee] = 50 if roll.uniq.length == 1
  end
  
  def chance(roll)
    category_score[:chance] = roll.reduce(&:+)
  end
end
