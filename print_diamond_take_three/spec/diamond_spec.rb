require 'diamond'

describe Diamond, ':full_diamond' do

  it 'returns an empty string for 0' do
    expect(Diamond.full_diamond(0)).to eq ''
  end 

  it 'returns an A for 1' do
    expect(Diamond.full_diamond(1)).to eq 'A'
  end 

  it 'returns appropriate diamond for 2' do
    expect(Diamond.full_diamond(2)).to eq " A \nB B\n A "
  end 

  it 'returns appropriate diamond for 3' do
    expect(Diamond.full_diamond(3)).to eq "  A  \n B B \nC   C\n B B \n  A  "
  end 

end

describe Diamond, ':line' do

  it 'returns the appropriate string for width 1, index 0' do
    expect(Diamond.line(1, 0, 'x')).to eq 'x'
  end 

  it 'returns the appropriate string for width 3, index 0' do
    expect(Diamond.line(3, 0, 'x')).to eq ' x '
  end 

  it 'returns the appropriate string for width 3, index 1' do
    expect(Diamond.line(3, 1, 'x')).to eq 'x x'
  end 

  it 'returns the appropriate string for width 5, index 0' do
    expect(Diamond.line(5, 0, 'x')).to eq '  x  '
  end 

  it 'returns the appropriate string for width 5, index 1' do
    expect(Diamond.line(5, 1, 'x')).to eq ' x x '
  end 

  it 'returns the appropriate string for width 5, index 2' do
    expect(Diamond.line(5, 2, 'x')).to eq 'x   x'
  end 

end
