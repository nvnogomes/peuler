require "mathn"

# Find the first four consecutive integers to have four distinct primes factors.
# 134043

class Euler47

	@@LIMIT = 1000000

	def initialize(numbers=4,distincts=4)
		@numbers = numbers
		@distinct_primes = distincts
		@prime_sequence = Array.new
	end
	
	
	def solve
		sequence_size = 0
		first = @@LIMIT
		1.upto(@@LIMIT) do |number|
		
			p_division = Prime.prime_division(number)
			
			if p_division.size == @distinct_primes
				if !repeated_primes(p_division)
					sequence_size += 1
					puts "#{sequence_size} #{number}"
					first = number if number < first
					break if sequence_size == @numbers
					
				else
					first = @@LIMIT
					sequence_size = 0
					@prime_sequence.clear
				end
			else
				first = @@LIMIT
				sequence_size = 0
				@prime_sequence.clear
			end
		end
		puts "#{sequence_size} #{@prime_sequence.to_s}"
		first
	end
	

	def repeated_primes(curr)
		curr.each do |prime,exp|
			return true if @prime_sequence.include?(prime*exp)
			@prime_sequence.push(prime*exp)
		end
		return false
	end

end
