require 'mathn'

#Find the largest prime factor of a composite number.

class Euler3

	@number

	def initialize(number)
		@number = number
	end
	
	def solve
		largest_prime = 1
		Prime.prime_division(@number).each do |factor|
		largest_prime = factor[0] if ( factor[0] > largest_prime )
		end
		largest_prime
	end



end

