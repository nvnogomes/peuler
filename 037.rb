require "mathn"

# Find the sum of all eleven primes that are both truncatable from left to right and right to left.
# 748317

class Euler37

	@@MAX = 1000000

	def initialize(n=11)
		@counter = 0
		@prime_limit = n
	end
	
	def solve
		sum = 0
		Prime.each(@@MAX) do |prime|
			if prime > 7 && truncable_prime(prime)
				puts prime
				@counter += 1
				sum += prime
			end
			
			break if @counter == @prime_limit
		end
		puts "#{@counter} #{sum}"
		sum
	end

	def truncable_prime(p)
		p_str = p.to_s
		p_len = p_str.length
		1.upto(p_len-1) do |i|
			# puts "#{p_str[0..p_len-i-1].to_i} #{p_str[i..p_len].to_i}"
			if !Prime.prime?(p_str[0..p_len-i-1].to_i) || !Prime.prime?(p_str[i..p_len].to_i)
				return false
			end
		end
		return true
	end

end
