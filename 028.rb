
# What is the sum of both diagonals in a 1001 by 1001 spiral?
# 669171001

=begin
1 => 1
3 => 3*0+3 3*1+2 3*2+1 3*3
5 => 5*2+3 5*3+2 5*4+1 5*5
7 => 7*4+3 7*5+2 5*6+1 7*7
=end

class Euler28

	@spiral_size
	
	
	def initialize(size=1001)
		@spiral_size = size
	end

	def solve
		sum = 1
		multiplier = 0
		iterator = make_iterator
		iterator.each do |step|
			4.times do |i|
				sum += step*(multiplier+i) + (3-i)
			end
			multiplier = step-1
		end
		sum
	end
	
	def make_iterator
		arr = (3..@spiral_size).to_a
		arr.delete_if { |n| n.even? }
		arr
	end

end
