require './modules/count_score'

class Fives
  include CountScore

  def pips
    5
  end
end