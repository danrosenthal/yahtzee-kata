require 'high_score'

describe HighScore do
  
  it 'returns the best possible score from a hash of category scores' do
    category_score = {:aces=>0, :twos=>0, :threes=>0, :fours=>8, :fives=>15, :sixes=>0, :three_kind=>23, :four_kind=>0, :full_house=>25, :sm_straight=>0, :lg_straight=>0, :yahtzee=>0, :chance=>23}
    expect(subject.set_high_score(category_score)).to eq([:full_house, 25])
  end
end