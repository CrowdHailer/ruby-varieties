require './even'

describe 'Even generator' do
	context 'Array constructor' do
		it 'should create an array of even numbers 0 to 6' do
			expect(even_numbers0(6)).to eq([0,2,4,6])
		end

		it 'should handle odd arguments' do
			expect(even_numbers0(3)).to eq([0,2])
		end

		it 'should return [0] given no arguments' do
			expect(even_numbers0).to eq([0])
		end
	end

	context 'Select from range' do
		it 'should create an array of even numbers 0 to 6' do
			expect(even_numbers1(6)).to eq([0,2,4,6])
		end

		it 'should handle odd arguments' do
			expect(even_numbers1(3)).to eq([0,2])
		end

		it 'should return [0] given no arguments' do
			expect(even_numbers1).to eq([0])
		end
	end

	context 'Squash integer array' do
		it 'should create an array of even numbers 0 to 6' do
			expect(even_numbers2(6)).to eq([0,2,4,6])
		end

		it 'should handle odd arguments' do
			expect(even_numbers2(3)).to eq([0,2])
		end

		it 'should return [0] given no arguments' do
			expect(even_numbers2).to eq([0])
		end
	end

	context 'while loop till limit' do
		it 'should create an array of even numbers 0 to 6' do
			expect(even_numbers3(6)).to eq([0,2,4,6])
		end

		it 'should handle odd arguments' do
			expect(even_numbers3(3)).to eq([0,2])
		end

		it 'should return [0] given no arguments' do
			expect(even_numbers3).to eq([0])
		end
	end
end