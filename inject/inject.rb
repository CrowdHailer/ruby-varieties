class Array
	def my_inject init=0
		for element in self do
			init = yield(init, element)
		end
		init
	end

	def recursive_inject init=0, &block
		element = shift
		return init if element.nil?
		init = yield(init, element)
		recursive_inject(init, &block)
	end

	def min_inject init=0, &block
		(element = shift) ? min_inject((yield init, element), &block) : init
	end

	def index_inject mem=0, &block
		(0..count-1).to_a.each do |i|
			element = self[i]
			mem = block.call mem, element
		end
		mem
	end

	def while_inject mem=0
		i = 0
		while i < length
			mem = yield mem, self[i]
			i += 1
		end
		mem
	end
end