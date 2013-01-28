
# Find the last ten digits of 11 + 22 + ... + 1000^1000.

class Euler48

	@limit
	
	def initialize(max)
		@limit = max
	end
	
	def solve
		(1..@limit).inject(0) do |sum,number|
			sum += number**number
		end
	end

end
