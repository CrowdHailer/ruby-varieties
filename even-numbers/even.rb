def even_numbers0 max=0
	entries = max/2 + 1
	output = Array.new(entries) { |i| i*2 }
end

def even_numbers1 max=0
	(0..max).select { |i| i.even? }
end

def even_numbers2 max=0
	integers = (0..max).to_a
	integers.map! { |i| (i/2) * 2 }
	integers.uniq
end

def even_numbers3 max=0
	i, output = 0, []
	while i <= max
		output << i
		i += 2
	end
	output
end