require './lib/count_score'

class Fours
  include CountScore
  
  def pips
    4
  end
end