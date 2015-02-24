require 'fives'

describe Fives do
  it 'scores an empty roll as 0' do
    expect(subject.score([])).to eq(0)
  end
  
  it 'scores a roll with three fives as 15' do
    expect(subject.score([5,5,5,3,1])).to eq(15)
  end
end