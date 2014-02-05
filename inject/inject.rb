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

	def min_recursive_inject init=0, &block
		(element = shift) ? min_recursive_inject((yield init, element), &block) : init
	end
end