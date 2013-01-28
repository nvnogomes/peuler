require "mathn"

# Find a quadratic formula that produces the maximum number of primes for consecutive values of n. n² + an + b, where |a| < 1000 and |b| < 1000
# a=-61 b=971 product=-59231

class Euler27

	@min_a
	@min_b
	@max_a
	@max_b
	@exp

	def initialize(mod=1000)
		@min_a = -(mod-1)
		@min_b = -(mod-1)
		@max_a = mod-1
		@max_b = mod-1
		@exp = lambda {|n,a,b| n**2 + n*a + b}
	end
	
	
	def solve
		coef_a = 0
		coef_b = 0
		coef_product = 0
		max_primes = 0
		@min_a.upto(@max_a) do |a|
			@min_b.upto(@max_b) do |b|
				primes = 0
				0.upto(1000) do |n|
					if Prime.prime?(@exp.call(n,a,b))
						primes += 1 
					else
						break
					end
				end
				
				if primes > max_primes
					max_primes = primes
					coef_product = a * b
					coef_a = a
					coef_b = b
				end
			end
		end
		puts "Coefs #{coef_a} #{coef_b} with #{max_primes}"
		coef_product
	end


end
