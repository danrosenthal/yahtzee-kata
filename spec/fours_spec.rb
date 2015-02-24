require 'fours'

describe Fours do
  it 'scores an empty roll as 0' do
    expect(subject.score([])).to eq(0)
  end
  
  it 'scores a roll with four fours and a one as 16' do
    expect(subject.score([4,4,4,4,1])).to eq(16)
  end
end