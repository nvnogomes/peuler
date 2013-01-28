require "mathn"

# Semiprimes


class Euler187

	@limit
	
	def initialize(max=100000)
		@limit = max
	end
	
	def primes 
		Prime.each do |prime|
			puts "finish" if prime > 100000000
		end
	end
	
	def solve
		counter = 0
		1.upto(@limit) do |number|
			if num_of_factors(number) == 2
				counter += 1
				#puts number
			end
			puts number if number.modulo(10000) == 0
		end
		counter
	end
	

	def num_of_factors(number)
		factors = Prime.prime_division(number)
		primes = 0
		factors.each do |factor,power|
			primes += power
		end
		primes
	end

end
