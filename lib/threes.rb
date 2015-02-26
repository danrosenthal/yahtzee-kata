require './modules/count_score'

class Threes
  include CountScore
  
  def pips
    3
  end
end
