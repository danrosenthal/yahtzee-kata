class Score
  attr_accessor :score_card
  
  def initialize
    @score_card = {
      aces: nil,
      twos: nil,
      threes: nil,
      fours: nil,
      fives: nil,
      sixes: nil,
      three_kind: nil,
      four_kind: nil,
      full_house: nil,
      sm_straight: nil,
      lg_straight: nil,
      yahtzee: nil,
      chance: nil
    }
  end
  
  def manage_score_card(category, category_score)
    score_card[category] = category_score
  end
end