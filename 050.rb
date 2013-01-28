require "mathn"

# Which prime, below one-million, can be written as the sum of the most consecutive primes?

class Euler50

	
	def initialize(number=1000)
		@limit = number
	end
	
	
	def solve
		factorial_size = 0
		biggest_factorial = 0
		Prime.each(@limit) do |current_prime|
			sum_primes = count_prime_sum(current_prime)
			puts "#{current_prime} #{sum_primes}\n"
			if( sum_primes > factorial_size )
				factorial_size = sum_primes
				biggest_factorial = current_prime
			end
		end
		puts "#{biggest_factorial} #{factorial_size}"
		biggest_factorial
	end

	def count_prime_sum(n)
		sum = 0
		counter = 0
		Prime.each(n) do |prime|
			counter += 1
			sum += prime
			return counter if sum == n
			return -1 if sum > n
		end
	end

end
