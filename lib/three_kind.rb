require './lib/kind_score'

class ThreeKind
  include KindScore
  
  def kind
    3
  end
end