require 'three_kind'

describe ThreeKind do
  it 'scores a roll without three of the same dice 0' do
    expect(subject.score([])).to eq(0)
  end
  it 'scores a roll with three of the same dice the total of the roll' do
    expect(subject.score([3,3,3,1,2])).to eq(12)
  end
  it 'scores a roll with dice but not three of the same 0' do
    expect(subject.score([1,2,3,4,5])).to eq(0)
  end
end