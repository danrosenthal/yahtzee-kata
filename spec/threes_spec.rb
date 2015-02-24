require 'threes'

describe Threes do
  it 'scores an empty roll as 0' do
    expect(subject.score([])).to eq(0)
  end
  
  it 'scores a roll with all threes as 15' do
    expect(subject.score([3,3,3,3,3])).to eq(15)
  end
  
  it 'scores a roll with four threes and a one as 12' do
    expect(subject.score([3,3,3,3,1])).to eq(12)
  end
end