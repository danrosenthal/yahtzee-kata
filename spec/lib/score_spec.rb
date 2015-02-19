require "spec_helper"
require "score"

describe Score do
  context "when it initializes" do
    Score.new
    
    it "creates a scorecard with length of 13" do
      expect(subject.score_card.length).to eq(13)
    end
  end
  
  context "when we pass a category and category score" do
    Score.new
    
    it "changes the aces score to 5" do
      subject.manage_score_card(:aces, 5)
      expect(subject.score_card[:aces]).to eq(5)
    end
    
    it "changes the twos score to 10" do
      subject.manage_score_card(:twos, 10)
      expect(subject.score_card[:twos]).to eq(10)
    end
  end
end