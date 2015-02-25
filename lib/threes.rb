require './lib/count_score.rb'

class Threes
  include CountScore
  
  def pips
    3
  end
end
