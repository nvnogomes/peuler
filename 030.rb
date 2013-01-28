
# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.
# 443839

class Euler30

	@power
	@init
	@end
	
	def initialize(power = 5)
		@power = power
		
		@init = 2
		@end = 200000
	end
	
	def solve
		powers = Array.new
		@init.upto(@end) do |number|
			sum = 0
			number.to_s.scan(/\d/).each do |digit|
				sum += digit.to_i ** @power
			end
			powers.push(number) if sum == number
		end
		
		puts powers
		
		power_sum = 0
		powers.each do |number|
			power_sum += number
		end
		power_sum
	
	end


end
