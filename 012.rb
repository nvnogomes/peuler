require "mathn"

# What is the value of the first triangle number to have over five hundred divisors?
# 76576500

=begin
 1: 1
 3: 1,3
 6: 1,2,3,6
10: 1,2,5,10
15: 1,3,5,15
21: 1,3,7,21
28: 1,2,4,7,14,28
36: 1,2,3,4,6,9,12,18,36
=end

class Euler12

	@divisors_limit
	@loop_limit 
	
	
	def initialize(divs=500)
		@divisors_limit = divs
		@loop_limit = divs*100
	end
	
	
	def solve
		max_divisors = 0
		triangle = 0
		divisors = 0
		1.upto(@loop_limit) do |number|
			triangle += number
			divisors = number_of_divisors(triangle)
			break if divisors > @divisors_limit
		end
		puts "Triangle #{triangle} with #{divisors} divisors"
	end
	
	def number_of_divisors(number)
		factors = Prime.prime_division(number)
		divisors = 1
		factors.each do |factor,power|
			divisors *= power+1
		end
		divisors
	end
	
end
