require 'mathn'

# Calculate the sum of all the primes below two million.

class Euler10

	@limit
	
	def initialize(max)
		@limit = max
	end
	
	def solve
		sum = 0
		Prime.each(@limit) do |prime|
			sum += prime
		end
	end


end
