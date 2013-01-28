
# What is the first term in the Fibonacci sequence to contain 1000 digits?
# 4782

class Euler25

	@size_limit
	
	def initialize(limit)
		@size_limit = limit
	end
	
	
	def	solve
		th_iteration = 0
		fib_up_to(@size_limit**1000) do |number|
			number_string = number.to_s
			th_iteration += 1
			return number,th_iteration if number.to_s.length == @size_limit
		end
	end

	
	def fib_up_to(max)
		i1, i2 = 1, 1
		while i1 <= max
			yield i1
			i1, i2 = i2, i1+i2
		end
	end

end
