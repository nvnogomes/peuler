
# Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits in some order.
# 142857

class Euler52

	

	def initialize(c=6,m=1000000)
		@MAX = m
		@cycles = c
	end
	
	
	def solve
		1.upto(@MAX) do |number|
			return number if equal_products(number)
		end
	end
	
	def equal_products(n)
		number_str = n.to_s.scan(/\d/).sort.join.to_i
		1.upto(@cycles) do |mult| 
			product = n * mult
			return false if !equal_numbers(number_str,product.to_s)
		end
		return true
	end
	
	def equal_numbers(str1,str2)
		other = str2.scan(/\d/).sort.join.to_i
		return str1 == other
	end
	
	

end
