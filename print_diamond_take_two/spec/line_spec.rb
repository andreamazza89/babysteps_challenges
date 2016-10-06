require 'line'

describe Line do

  it '#evalutate_line returns empty string for 0,0,*' do  
    expect(Line.evalutate_line(0,0,'A')).to eq ""
    expect(Line.evalutate_line(0,0,'B')).to eq ""
  end

  it '#evaluate_line returns A for 1,1,A' do
    expect(Line.evalutate_line(1,1,'A')).to eq("A")
    expect(Line.evalutate_line(1,1,'B')).to eq("B")
  end

  it '#evaluate_line returns _A_ for 2,1,A' do
    expect(Line.evalutate_line(2,1,'A')).to eq(" A ")
  end

  it '#evaluate_line returns C_C for 2,2,C' do
    expect(Line.evalutate_line(2,2,'C')).to eq("C C")
  end

  it '#evaluate_line returns C___C for 3,3,C' do
    expect(Line.evalutate_line(3,3,'C')).to eq("C   C")
  end

  it '#evaluate_line returns _C_C_ for 3,2,C' do
    expect(Line.evalutate_line(3,2,'C')).to eq(" C C ")
  end

  it '#outer_space returns _ for 3,2,C' do
    expect(Line.outer_space(3, 2)).to eq(" ")
  end

end
