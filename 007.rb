require "mathn"

# What is the 10001^(st) prime number? 104743

class Euler7

	@position

	def initialize(pos)
		@position = pos
	end
	
	def solve
		counter = 0
		th_prime = 0
		Prime.each(@position**10) do |prime|
			counter += 1
			th_prime = prime
			return th_prime if counter == @position
		end
	
	end
		
end
