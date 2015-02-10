require "spec_helper"
require "yahtzee"

describe Category do

  # aces tests

  it "is aces" do 
    roll = Category.new(1, 1, 1, 1, 1)
    expect(roll.aces?).to be true
    
    roll = Category.new(1, 1, 1, 4, 4)
    expect(roll.aces?).to be true
    
    roll = Category.new(2, 2, 2, 4, 4) 
    expect(roll.aces?).to be false
  end
  
  it "scores aces" do
    roll = Category.new(1, 1, 1, 1, 1)
    expect(roll.score_aces!).to be == 5
    
    roll = Category.new(1, 1, 1, 4, 4)
    expect(roll.score_aces!).to be == 3
    
    roll = Category.new(2, 2, 2, 4, 4)
    expect(roll.score_aces!).to be == 0
  end
  
  # twos tests
  
  it "is twos" do 
    roll = Category.new(2, 2, 2, 1, 1)
    expect(roll.twos?).to be true
    
    roll = Category.new(2, 2, 1, 4, 4)
    expect(roll.twos?).to be true
    
    roll = Category.new(1, 3, 1, 4, 4) 
    expect(roll.twos?).to be false
  end
  
  it "scores twos" do
    roll = Category.new(2, 2, 2, 1, 1)
    expect(roll.score_twos!).to be == 6
    
    roll = Category.new(2, 2, 1, 4, 4)
    expect(roll.score_twos!).to be == 4
    
    roll = Category.new(1, 3, 1, 4, 4) 
    expect(roll.score_twos!).to be == 0
  end
  
  # threes tests
  
  it "is threes" do 
    roll = Category.new(3, 3, 3, 1, 1)
    expect(roll.threes?).to be true
    
    roll = Category.new(3, 3, 1, 4, 4)
    expect(roll.threes?).to be true
    
    roll = Category.new(1, 2, 1, 4, 4) 
    expect(roll.threes?).to be false
  end
  
  it "scores threes" do 
    roll = Category.new(3, 3, 3, 1, 1)
    expect(roll.score_threes!).to be == 9
    
    roll = Category.new(3, 3, 1, 4, 4)
    expect(roll.score_threes!).to be == 6
    
    roll = Category.new(1, 2, 1, 4, 4) 
    expect(roll.score_threes!).to be == 0
  end
  
  # fours tests
  
  it "is fours" do 
    roll = Category.new(4, 4, 4, 1, 1)
    expect(roll.fours?).to be true
    
    roll = Category.new(4, 4, 1, 2, 2)
    expect(roll.fours?).to be true
    
    roll = Category.new(1, 2, 1, 3, 3) 
    expect(roll.fours?).to be false
  end
  
  it "scores fours" do 
    roll = Category.new(4, 4, 4, 1, 1)
    expect(roll.score_fours!).to be == 12
    
    roll = Category.new(4, 4, 1, 2, 2)
    expect(roll.score_fours!).to be == 8
    
    roll = Category.new(1, 2, 1, 3, 3) 
    expect(roll.score_fours!).to be == 0
  end
  
  # fives tests
  
  it "is fives" do 
    roll = Category.new(5, 5, 5, 1, 1)
    expect(roll.fives?).to be true
    #expect(roll.score).to be == 15
    
    roll = Category.new(5, 5, 1, 2, 2)
    expect(roll.fives?).to be true
    #expect(roll.score).to be == 10
    
    roll = Category.new(1, 2, 1, 3, 3) 
    expect(roll.fives?).to be false
    #expect(roll.score).to be == 0
  end
  
  it "scores fives" do 
    roll = Category.new(5, 5, 5, 1, 1)
    expect(roll.score_fives!).to be == 15
    
    roll = Category.new(5, 5, 1, 2, 2)
    expect(roll.score_fives!).to be == 10
    
    roll = Category.new(1, 2, 1, 3, 3)
    expect(roll.score_fives!).to be == 0
  end
  
  # sixes tests
  
  it "is sixes" do 
    roll = Category.new(6, 6, 6, 1, 1)
    expect(roll.sixes?).to be true
    #expect(roll.score).to be == 18
    
    roll = Category.new(6, 6, 1, 2, 2)
    expect(roll.sixes?).to be true
    #expect(roll.score).to be == 12
    
    roll = Category.new(1, 2, 1, 3, 3) 
    expect(roll.sixes?).to be false
    #expect(roll.score).to be == 0
  end
  
  it "scores sixes" do 
    roll = Category.new(6, 6, 6, 1, 1)
    expect(roll.score_sixes!).to be == 18
    
    roll = Category.new(6, 6, 1, 2, 2)
    expect(roll.score_sixes!).to be == 12
    
    roll = Category.new(1, 2, 1, 3, 3)
    expect(roll.score_sixes!).to be == 0
  end
  
  # three of a kind tests
  
  it "is three of a kind" do 
    roll = Category.new(6, 6, 6, 1, 1)
    expect(roll.three_of_a_kind?).to be true
    
    roll = Category.new(3, 3, 3, 1, 1)
    expect(roll.three_of_a_kind?).to be true
    
    roll = Category.new(1, 2, 3, 4, 5)
    expect(roll.three_of_a_kind?).to be false
  end
  
  it "scores three of a kind" do 
    roll = Category.new(6, 6, 6, 1, 1)
    expect(roll.score_three_of_a_kind!).to be == 20
    
    roll = Category.new(3, 3, 3, 1, 1)
    expect(roll.score_three_of_a_kind!).to be == 11
    
    roll = Category.new(1, 2, 3, 4, 5)
    expect(roll.score_three_of_a_kind!).to be == 0
  end
  
  # four of a kind tests
  
  it "is four of a kind" do 
    roll = Category.new(6, 6, 6, 6, 1)
    expect(roll.four_of_a_kind?).to be true
    
    roll = Category.new(3, 3, 3, 3, 1)
    expect(roll.four_of_a_kind?).to be true
    
    roll = Category.new(1, 2, 3, 4, 5)
    expect(roll.four_of_a_kind?).to be false
  end
  
  it "scores four of a kind" do 
    roll = Category.new(6, 6, 6, 6, 1)
    expect(roll.score_four_of_a_kind!).to be == 25
    
    roll = Category.new(3, 3, 3, 3, 1)
    expect(roll.score_four_of_a_kind!).to be == 13
    
    roll = Category.new(1, 2, 3, 4, 5)
    expect(roll.score_four_of_a_kind!).to be == 0
  end
  
  # full house tests
  
  it "is a full house" do 
    roll = Category.new(6, 6, 6, 4, 4)
    expect(roll.full_house?).to be true
    
    roll = Category.new(3, 3, 2, 2, 2)
    expect(roll.full_house?).to be true
    
    roll = Category.new(1, 1, 1, 1, 1)
    expect(roll.full_house?).to be true
    
    roll = Category.new(1, 2, 3, 4, 5)
    expect(roll.full_house?).to be false
  end
  
  it "scores a full house" do 
    roll = Category.new(6, 6, 6, 4, 4)
    expect(roll.score_full_house!).to be == 25
    
    roll = Category.new(3, 3, 2, 2, 2)
    expect(roll.score_full_house!).to be == 25
    
    roll = Category.new(1, 1, 1, 1, 1)
    expect(roll.score_full_house!).to be == 25
    
    roll = Category.new(1, 2, 3, 4, 5)
    expect(roll.score_full_house!).to be == 0
  end
  
  # small straight tests
  
  it "is a small straight" do 
    roll = Category.new(1, 2, 3, 4, 6)
    expect(roll.small_straight?).to be true
    
    roll = Category.new(2, 3, 4, 5, 5)
    expect(roll.small_straight?).to be true
    
    roll = Category.new(3, 4, 5, 6, 6)
    expect(roll.small_straight?).to be true
    
    roll = Category.new(1, 2, 3, 5, 5)
    expect(roll.small_straight?).to be false
  end
  
  it "scores a small straight" do 
    roll = Category.new(1, 2, 3, 4, 6)
    expect(roll.score_small_straight!).to be == 30
    
    roll = Category.new(2, 3, 4, 5, 5)
    expect(roll.score_small_straight!).to be == 30
    
    roll = Category.new(3, 4, 5, 6, 6)
    expect(roll.score_small_straight!).to be == 30
    
    roll = Category.new(1, 2, 3, 5, 5)
    expect(roll.score_small_straight!).to be == 0
  end
  
  # large straight tests
  
  it "is a large straight" do 
    roll = Category.new(1, 2, 3, 4, 5)
    expect(roll.large_straight?).to be true
    
    roll = Category.new(2, 3, 4, 5, 6)
    expect(roll.large_straight?).to be true
    
    roll = Category.new(1, 2, 3, 4, 4)
    expect(roll.large_straight?).to be false
  end
  
  it "scores a large straight" do 
    roll = Category.new(1, 2, 3, 4, 5)
    expect(roll.score_large_straight!).to be == 40
    
    roll = Category.new(2, 3, 4, 5, 6)
    expect(roll.score_large_straight!).to be == 40
    
    roll = Category.new(1, 2, 3, 4, 4)
    expect(roll.score_large_straight!).to be == 0
  end
  
  # yahtzee tests
  
  it "is a yahtzee" do 
    roll = Category.new(1, 1, 1, 1, 1)
    expect(roll.yahtzee?).to be true
    
    roll = Category.new(2, 2, 2, 2, 2)
    expect(roll.yahtzee?).to be true
    
    roll = Category.new(1, 2, 3, 4, 4)
    expect(roll.yahtzee?).to be false
  end
  
  it "scores a yahtzee" do 
    roll = Category.new(1, 1, 1, 1, 1)
    expect(roll.score_yahtzee!).to be == 50
    
    roll = Category.new(2, 2, 2, 2, 2)
    expect(roll.score_yahtzee!).to be == 50
    
    roll = Category.new(1, 2, 3, 4, 4)
    expect(roll.score_yahtzee!).to be == 0
  end
end