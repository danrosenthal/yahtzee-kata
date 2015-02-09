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
    expect(roll.score_of_aces!).to be == 5
    
    roll = Category.new(1, 1, 1, 4, 4)
    expect(roll.score_of_aces!).to be == 3
    
    roll = Category.new(2, 2, 2, 4, 4)
    expect(roll.score_of_aces!).to be nil
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
    expect(roll.score_of_twos!).to be == 6
    
    roll = Category.new(2, 2, 1, 4, 4)
    expect(roll.score_of_twos!).to be == 4
    
    roll = Category.new(1, 3, 1, 4, 4) 
    expect(roll.score_of_twos!).to be nil
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
    expect(roll.score_of_threes!).to be == 9
    
    roll = Category.new(3, 3, 1, 4, 4)
    expect(roll.score_of_threes!).to be == 6
    
    roll = Category.new(1, 2, 1, 4, 4) 
    expect(roll.score_of_threes!).to be nil
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
    expect(roll.score_of_fours!).to be == 12
    
    roll = Category.new(4, 4, 1, 2, 2)
    expect(roll.score_of_fours!).to be == 8
    
    roll = Category.new(1, 2, 1, 3, 3) 
    expect(roll.score_of_fours!).to be nil
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
    #expect(roll.score).to be == nil
  end
  
  it "scores fives" do 
    roll = Category.new(5, 5, 5, 1, 1)
    expect(roll.score_of_fives!).to be == 15
    
    roll = Category.new(5, 5, 1, 2, 2)
    expect(roll.score_of_fives!).to be == 10
    
    roll = Category.new(1, 2, 1, 3, 3)
    expect(roll.score_of_fives!).to be == nil
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
    expect(roll.score_of_sixes!).to be == 18
    
    roll = Category.new(6, 6, 1, 2, 2)
    expect(roll.score_of_sixes!).to be == 12
    
    roll = Category.new(1, 2, 1, 3, 3)
    expect(roll.score_of_sixes!).to be nil
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
    expect(roll.score_of_three_of_a_kind!).to be == 20
    
    roll = Category.new(3, 3, 3, 1, 1)
    expect(roll.score_of_three_of_a_kind!).to be == 11
    
    roll = Category.new(1, 2, 3, 4, 5)
    expect(roll.score_of_three_of_a_kind!).to be nil
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
    expect(roll.score_of_four_of_a_kind!).to be == 25
    
    roll = Category.new(3, 3, 3, 3, 1)
    expect(roll.score_of_four_of_a_kind!).to be == 13
    
    roll = Category.new(1, 2, 3, 4, 5)
    expect(roll.score_of_four_of_a_kind!).to be nil
  end
  
  # full house tests
  
  it "is a full house" do 
    roll = Category.new(6, 6, 6, 4, 4)
    expect(roll.full_house?).to be true
    #expect(roll.score).to be == 25
    
    roll = Category.new(3, 3, 2, 2, 2)
    expect(roll.full_house?).to be true
    #expect(roll.score).to be == 25
    
    roll = Category.new(1, 1, 1, 1, 1)
    expect(roll.full_house?).to be true
    #expect(roll.score).to be == 25
    
    roll = Category.new(1, 2, 3, 4, 5)
    expect(roll.full_house?).to be false
    #expect(roll.score).to be == 0
  end
end