
# What is the smallest number divisible by each of the numbers 1 to 20?
# 232792560

class Euler5

	@max_divisor
	
	def initialize(max)
		@max_divisor = max
	end
	
	
	def solve
		result = lcm(2,1)
		(3).upto(@max_divisor) do |number|
			aux = lcm(number,result)
			result = aux
		end
		return result
	end
	
		
	def lcm(first,other)
		if first.zero? or other.zero?
			0
		else
			return (first.div(first.gcd(other)) * other).abs
		end
	end

end


