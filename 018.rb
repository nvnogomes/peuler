
# Find the maximum sum travelling from the top of the triangle to the base.
# 1074


class Euler18

	@triangle
	@line
	@path_sum
	
	attr_writer :triangle
	
	
	def initialize(lines)
		@line = 0
	
		@triangle = Array.new(lines)
		
		@path_sum = Array.new(lines)
		@path_sum.map! { Array.new(lines) }
		@path_sum.map! { |array| array.fill(0) }
	end
	
	
	def add_euler_problem
		@triangle[0] = [75]
		@triangle[1] = [95, 64]
		@triangle[2] = [17, 47, 82]
		@triangle[3] = [18, 35, 87, 10]
		@triangle[4] = [20, 4, 82, 47, 65]
		@triangle[5] = [19, 1, 23, 75, 3, 34]
		@triangle[6] = [88, 2, 77, 73, 7, 63, 67]
		@triangle[7] = [99, 65, 4, 28, 6, 16, 70, 92]
		@triangle[8] = [41, 41, 26, 56, 83 ,40, 80, 70, 33]
		@triangle[9] = [41, 48, 72, 33, 47, 32, 37, 16, 94, 29]
		@triangle[10] = [53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14]
		@triangle[11] = [70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57]
		@triangle[12] = [91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48]
		@triangle[13] = [63, 66, 4, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31]
		@triangle[14] = [4, 62, 98, 27, 23, 9, 70, 98, 73, 93, 38, 53, 60, 4, 23]
	end
	
	
	
	# dynamic
	def solve

		# j = 0
		@path_sum[0][0] = @triangle[0][0]
		for i in 1...@triangle.size do
			@path_sum[i][0] = @triangle[i][0] + @path_sum[i-1][0]
		end
		
		# j > 0 & i <= j
		for i in 1...@triangle.size do
			for j in 1..i do
				@path_sum[i][j] = [@path_sum[i-1][j-1] + @triangle[i][j],@path_sum[i-1][j] + @triangle[i][j]].max
			end
		end
		@path_sum[@line-1].max
	end

end
