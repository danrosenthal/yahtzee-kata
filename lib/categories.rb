require 'aces'
require 'twos'
require 'threes'
require 'fours'
require 'fives'
require 'sixes'
require 'three_kind'
require 'four_kind'
require 'full_house'
require 'sm_straight'

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
    score = Aces.new.score(roll)
    category_score[:aces] = score if not_zero?(score)
  end
  def twos(roll)
    score = Twos.new.score(roll)
    category_score[:twos] = score if not_zero?(score)
  end
  def threes(roll)
    score = Threes.new.score(roll)
    category_score[:threes] = score if not_zero?(score)
  end
  def fours(roll)
    score = Fours.new.score(roll)
    category_score[:fours] = score if not_zero?(score)
  end
  def fives(roll)
    score = Fives.new.score(roll)
    category_score[:fives] = score if not_zero?(score)
  end
  def sixes(roll)
    score = Sixes.new.score(roll)
    category_score[:sixes] = score if not_zero?(score)
  end
  def three_kind(roll)
    score = ThreeKind.new.score(roll)
    category_score[:three_kind] = score if not_zero?(score)
  end
  def four_kind(roll)
    score = FourKind.new.score(roll)
    category_score[:four_kind] = score if not_zero?(score)
  end
  def full_house(roll)
    score = FullHouse.new.score(roll)
    category_score[:full_house] = score if not_zero?(score)
  end
  def sm_straight(roll)
    score = SmallStraight.new.score(roll)
    category_score[:sm_straight] = score if not_zero?(score)
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
  
  private
  
  def not_zero?(score)
    score > 0
  end
end
