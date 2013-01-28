
# Considering natural numbers of the form, ab, finding the maximum digital sum a,b<100.
# 972

class Euler56


	def initialize(max=99)
		@max = max
	end
	
	
	def solve
		max = 0
		1.upto(@max) do |a|
			1.upto(@max) do |b|
				power_sum = digit_sum( a**b )
				max = power_sum if power_sum > max
			end
		end
		max
	end

	def digit_sum(number)
		sum = 0
		number.to_s.each_char do |c|
			sum += c.to_i
		end
		sum
	end

end
