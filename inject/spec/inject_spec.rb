require './inject'

describe 'Array inject method' do
	let(:array) { [1,2,3,4,5] }

	it 'should create a total from all elements in an array and block' do
		expect(array.my_inject { |mem, var| mem + var }).to eq(15)
	end

	it 'should take a starting value' do
		expect(array.my_inject(5) { |mem, var| mem + var }).to eq(20)
	end

	context 'recursive' do
		it 'should create a total from all elements in an array and block' do
			expect(array.recursive_inject { |mem, var| mem + var }).to eq(15)
		end

		it 'should take a starting value' do
			expect(array.recursive_inject(5) { |mem, var| mem + var }).to eq(20)
		end
	end

	context 'minimal recursive' do
		it 'should create a total from all elements in an array and block' do
			expect(array.min_inject { |mem, var| mem + var }).to eq(15)
		end

		it 'should take a starting value' do
			expect(array.min_inject(5) { |mem, var| mem + var }).to eq(20)
		end
	end

	context 'counting index' do
		it 'should create a total from all elements in an array and block' do
			expect(array.index_inject { |mem, var| mem + var }).to eq(15)
		end

		it 'should take a starting value' do
			expect(array.index_inject(5) { |mem, var| mem + var }).to eq(20)
		end
	end

	context 'while' do
		it 'should create a total from all elements in an array and block' do
			expect(array.while_inject { |mem, var| mem + var }).to eq(15)
		end

		it 'should take a starting value' do
			expect(array.while_inject(5) { |mem, var| mem + var }).to eq(20)
		end
	end
end