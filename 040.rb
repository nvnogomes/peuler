
# Finding the nth digit of the fractional part of the irrational number.
# 210

class Euler40

	@irrational
	@fdigit

	def initialize
		aux = ''
		1.upto(1000000) { |number| aux.concat number.to_s }
		@irrational = '0.'.concat aux
		@fdigit = [1,10,100,1000,10000,100000,1000000]
	end
	
	
	def solve
		product = 1
		@fdigit.each do |digit|
			product *= @irrational[digit+1].to_i
		end
		product
	end


end

