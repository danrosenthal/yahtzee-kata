require './modules/count_score'

class Sixes
  include CountScore

  def pips
    6
  end
end