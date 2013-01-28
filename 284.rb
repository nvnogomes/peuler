
# Steady Squares


class Euler284

	@limit
	@length_limit

	def initialize(max=9)
		@loop_limit = 10**max
		@length_limit = max
	end
	
	
	def solve
		sum = 0
		1.upto(@loop_limit) do |n|
			n14 = n.to_s(14)
			sn14 = (n**2).to_s(14)
			sum += n if sn14.end_with?(n14)
			puts n14
			break if n.to_s(14).length > @length_limit
		end
		
		sum.to_s(14)
	end


end
