require 'aces'

describe Aces do
  it 'scores an empty roll as zero' do
    expect(subject.score([])).to eq(0)
  end
  
  it 'scores a roll of all ones as 5' do
    expect(subject.score([1,1,1,1,1])).to eq(5)
  end
  
  it 'scores a roll of four ones and a two as 4' do
    expect(subject.score([1,1,1,1,2])).to eq(4)
  end
end