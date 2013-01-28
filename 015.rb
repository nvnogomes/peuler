
# Starting in the top left corner in a 20 by 20 grid, how many routes are there to the bottom right corner?
# 137846528820

=begin
n --> #
2 --> 6
3 --> 20
4 --> 70
5 --> 252
=end

class Euler15

	@size
	
	
	def initialize(n=2)
		if n < 2
			@size = 2
		else
			@size = n+1
		end
	end
	
	
	def solve
		grid = Array.new(@size)
		grid.map!{ Array.new(@size) }
		
		0.upto(@size-1) do |n| 
			grid[0][n] = 1
			grid[n][0] = 1
		end
		grid[0][0] = 2
		
		1.upto(@size-1) do |row|
			1.upto(@size-1) do |column|
				grid[column][row] = grid[column-1][row] + grid[column][row-1]
			end
		end
		grid[@size-1][@size-1]
	end


end
