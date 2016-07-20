describe PrintDiamond do

  it 'scaffold test' do
    expect(5).to equal(5) 
  end

  it 'returns the letter A' do
    expect(subject.print_diamond('A')).to eq('A')
  end

end
