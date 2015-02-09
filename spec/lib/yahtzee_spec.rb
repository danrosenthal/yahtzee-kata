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
    expect(roll.score_of_aces!).to be == 0
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
    expect(roll.score_of_twos!).to be == 0
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
    expect(roll.score_of_threes!).to be == 0
  end
  
  it "is fours" do 
    roll = Category.new(4, 4, 4, 1, 1)
    expect(roll.fours?).to be true
    #expect(roll.score).to be == 12
    
    roll = Category.new(4, 4, 1, 2, 2)
    expect(roll.fours?).to be true
    #expect(roll.score).to be == 8
    
    roll = Category.new(1, 2, 1, 3, 3) 
    expect(roll.fours?).to be false
    #expect(roll.score).to be == 0
  end
  
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
  
  it "is three of a kind" do 
    roll = Category.new(6, 6, 6, 1, 1)
    expect(roll.three_of_a_kind?).to be true
    #expect(roll.score).to be == 20
    
    roll = Category.new(3, 3, 3, 1, 1)
    expect(roll.three_of_a_kind?).to be true
    #expect(roll.score).to be == 11
    
    roll = Category.new(1, 2, 3, 4, 5)
    expect(roll.three_of_a_kind?).to be false
    #expect(roll.score).to be == 0
  end
  
  it "is four of a kind" do 
    roll = Category.new(6, 6, 6, 6, 1)
    expect(roll.four_of_a_kind?).to be true
    #expect(roll.score).to be == 25
    
    roll = Category.new(3, 3, 3, 3, 1)
    expect(roll.four_of_a_kind?).to be true
    #expect(roll.score).to be == 13
    
    roll = Category.new(1, 2, 3, 4, 5)
    expect(roll.four_of_a_kind?).to be false
    #expect(roll.score).to be == 0
  end
  
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