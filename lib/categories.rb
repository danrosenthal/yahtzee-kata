require './lib/aces'
require './lib/twos'
require './lib/threes'
require './lib/fours'
require './lib/fives'
require './lib/sixes'
require './lib/three_kind'
require './lib/four_kind'
require './lib/full_house'
require './lib/sm_straight'
require './lib/lg_straight'
require './lib/yahtzee'
require './lib/chance'

class Categories
  attr_reader :category_score, :highest_value
  
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
    
    @highest_value = highest_value(category_score)
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
    score = LargeStraight.new.score(roll)
    category_score[:lg_straight] = score if not_zero?(score)
  end
  def yahtzee(roll)
    score = Yahtzee.new.score(roll)
    category_score[:yahtzee] = score if not_zero?(score)
  end
  def chance(roll)
    category_score[:chance] = Chance.new.score(roll)
  end
  
  def highest_value(category_score)
    category_score.max_by { |k,v| v}
  end
  
  private
  
  def not_zero?(score)
    score > 0
  end
end
