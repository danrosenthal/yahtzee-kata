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
require './lib/high_score.rb'

class CategoryScore
  attr_reader :category_score, :high_score
  
  def initialize(roll)
    @category_score = {}
    calculate_category_score(roll)
  end
  
  def calculate_category_score(roll)
    category_score[:aces] = Aces.new.score(roll)
    category_score[:twos] = Twos.new.score(roll)
    category_score[:threes] = Threes.new.score(roll)
    category_score[:fours] = Fours.new.score(roll)
    category_score[:fives] = Fives.new.score(roll)
    category_score[:sixes] = Sixes.new.score(roll)
    category_score[:three_kind] = ThreeKind.new.score(roll)
    category_score[:four_kind] = FourKind.new.score(roll)
    category_score[:full_house] = FullHouse.new.score(roll)
    category_score[:sm_straight] = SmallStraight.new.score(roll)
    category_score[:lg_straight] = LargeStraight.new.score(roll)
    category_score[:yahtzee] = Yahtzee.new.score(roll)
    category_score[:chance] = Chance.new.score(roll)
    
    set_high_score(category_score)
  end
  
  private
  
  def set_high_score(category_score)
    @high_score = category_score.max_by { |k,v| v}
  end 
end