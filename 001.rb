	
# Add all the natural numbers below 1000 that are multiples of 3 or 5.

class Euler1

	@limit

	def initialize(max)
		@limit = max
	end

	def solve
		sum = 0
		(1...@limit).each do |number|
				sum += number if number.divmod(5)[1] == 0 || number.divmod(3)[1] == 0
		end
		sum
	end


end
