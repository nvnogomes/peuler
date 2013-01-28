
# Find the sum of all numbers which are equal to the sum of the factorial of their digits.
# 40730

class Euler34

	LIMIT = 100000
	@factorial

	def initialize
		init_factorial
	end
	
	def solve
		sum = 0
		10.upto(LIMIT) do |i|
			sum += i if condition(i)
		end
		sum
	end


	def init_factorial
		@factorial = {}
		0.upto(9) do |i|
			@factorial[i.to_s] = fact(i)
		end
	end
	
	def condition(number)
		aux = number.to_s
		sum = 0
		0.upto(aux.length-1) do |i|
			sum += @factorial[aux[i]]
		end
		return sum == number
	end


	def fact(n)
		if n == 0
			1
		else
			n * fact(n-1)
		end
	end
end
