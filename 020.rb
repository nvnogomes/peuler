require "013.rb"

# Find the sum of digits in 100!
#93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000

class Euler20

	@limit
	
	def initialize(max)
		@limit = max
	end
	
	def solve
		product = 1
		@limit.downto(1) do |number|
			product *= number
		end
		
		aux = Euler13.new(product)
		aux.solve
	end


end



