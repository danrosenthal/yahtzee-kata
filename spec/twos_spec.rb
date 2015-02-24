require 'twos'

describe Twos do
  it 'scores an empty roll as 0' do
    expect(subject.score([])).to eq(0)
  end
  
  it 'scores a roll with five twos as 10' do
    expect(subject.score([2,2,2,2,2])).to eq(10)
  end
  
  it 'scores a roll with four twos and a one as 8' do
    expect(subject.score([2,2,2,2,1])).to eq(8)
  end
end