require './string'

describe 'string reverse function' do
  let(:simple) { "abcdef" }
  it 'should reverse a simple string' do
    expect(simple.reverse0).to eq('fedcba')
  end
end