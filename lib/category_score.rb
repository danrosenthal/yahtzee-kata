require './lib/aces.rb'
require './lib/twos.rb'
require './lib/threes.rb'
require './lib/fours.rb'
require './lib/fives.rb'
require './lib/sixes.rb'
require './lib/three_kind.rb'
require './lib/four_kind.rb'
require './lib/full_house.rb'
require './lib/sm_straight.rb'
require './lib/lg_straight.rb'
require './lib/yahtzee.rb'
require './lib/chance.rb'

class CategoryScore
  attr_reader :category_score, :highest_value
  
  def initialize(roll)
    @category_score = {}
    calculate_category_score(roll)
  end
  
  def score_aces(roll)
    score = Aces.new.score(roll)
  end
  def score_twos(roll)
    Twos.new.score(roll)
  end
  def score_threes(roll)
    Threes.new.score(roll)
  end
  def score_fours(roll)
    Fours.new.score(roll)
  end
  def score_fives(roll)
    Fives.new.score(roll)
  end
  def score_sixes(roll)
    Sixes.new.score(roll)
  end
  def score_three_kind(roll)
    ThreeKind.new.score(roll)
  end
  def score_four_kind(roll)
    FourKind.new.score(roll)
  end
  def score_full_house(roll)
    FullHouse.new.score(roll)
  end
  def score_sm_straight(roll)
    SmallStraight.new.score(roll)
  end
  def score_lg_straight(roll)
    LargeStraight.new.score(roll)
  end
  def score_yahtzee(roll)
    Yahtzee.new.score(roll)
  end
  def score_chance(roll)
    Chance.new.score(roll)
  end
  
  private
  
  def calculate_category_score(roll)
    category_score[:aces] = score_aces(roll)
    category_score[:twos] = score_twos(roll)
    category_score[:threes] = score_threes(roll)
    category_score[:fours] = score_fours(roll)
    category_score[:fives] = score_fives(roll)
    category_score[:sixes] = score_sixes(roll)
    category_score[:three_kind] = score_three_kind(roll)
    category_score[:four_kind] = score_four_kind(roll)
    category_score[:full_house] = score_full_house(roll)
    category_score[:sm_straight] = score_sm_straight(roll)
    category_score[:lg_straight] = score_lg_straight(roll)
    category_score[:yahtzee] = score_yahtzee(roll)
    category_score[:chance] = score_chance(roll)
    
    set_highest_value(category_score)
  end
  
  def set_highest_value(category_score)
    @highest_value = category_score.max_by { |k,v| v}
  end
end