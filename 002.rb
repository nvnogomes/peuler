
# Find the sum of all the even-valued terms in the Fibonacci sequence which do not exceed four million.

class Euler2

	 @limit

	def initialize(max)
		@limit = max
	end
	

	def solve
		sum = 0
		fib_up_to(@limit) do |number|
			sum += number if is_even(number)
		end
		sum
	end



	def fib_up_to(max)
		i1, i2 = 1, 1
		while i1 <= max
			yield i1
			i1, i2 = i2, i1+i2
		end
	end

	def is_even(num)
		num.divmod(2)[1] == 0
	end


end
