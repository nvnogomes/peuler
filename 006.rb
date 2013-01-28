
# What is the difference between the sum of the squares and the square of the sums?
# limit 1000

class Euler6

	@limit

	def initialize(limit)
		@limit = limit
	end
	
	def solve
		square_of_sums(@limit) - sum_of_squares(@limit)
	end
	
	
	def sum_of_squares(limit)
		(1..limit).inject(0) { |sum,n| sum + n**2 }
	end
	
	def square_of_sums(limit)
		sums = (1..limit).inject(0) { |sum,n| sum + n }
		sums**2
	end
	

end
