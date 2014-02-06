require './string'

describe 'string reverse function' do
  let(:simple) { "abcdef" }
  it 'should reverse a simple string' do
    expect(simple.reverse0).to eq('fedcba')
  end
  
  it 'should reverse a simple string' do
    expect(simple.reverse1).to eq('fedcba')
  end
  
  it 'should reverse a simple string' do
    expect(simple.reverse2).to eq('fedcba')
  end
  
  it 'should reverse a simple string' do
    expect(simple.reverse3).to eq('fedcba')
  end
end