require 'lg_straight'

describe LargeStraight do
  it 'scores an empty roll as 0' do
    expect(subject.score([])).to eq(0)
  end
  it 'scores a large straight as 40' do
    expect(subject.score([1,2,3,4,5])).to eq(40)
  end
  it 'scores not a large straight as 0' do
    expect(subject.score([1,2,3,4,4])).to eq(0)
  end
end