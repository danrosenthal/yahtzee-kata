require './modules/count_score'

class Aces
  include CountScore
  
  def pips
    1
  end
end
