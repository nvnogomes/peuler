require "013.rb"

# What is the sum of the digits of the number 2^1000?

class Euler16

	@number
	
	def initialize(num)
		@number = num
	end
	
	
	def solve
		eu = Euler13.new(@number)
		eu.solve
	end


end
