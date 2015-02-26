require './modules/count_score'

class Twos
  include CountScore
  
  def pips
    2
  end
end