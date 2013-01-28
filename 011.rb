
# What is the greatest product of four numbers on the same straight line in the 20 by 20 grid?
# 70600674

#//TODO NOT WORKING EULER 011


class Euler11

	@@GRID_FILE = "011_grid.txt"
	@grid
	@grid_size
	@sequence_size


	def initialize
		@grid = load_file(@@GRID_FILE)
		@grid_size = @grid.size
		@sequence_size = 4
	end
	
	
	def load_file(file)
		grid_array = Array.new
		File.open(file,"r") do |file|
			while line = file.gets
				line_array = line.scan(/\d\d/)
				grid_array.push(line_array)
			end
		end
		grid_array
	end
	

	def solve
		max = 0
		max = max_hvd
	end

	
	def max_hvd
	partial_max = 0
		# cycle 0..19
		0.upto(@grid_size-1) do |row|
		
			# cycle 0..17
			0.upto(@grid_size-@sequence_size+1) do |column|
				temp_h = 0
				temp_v = 0
				temp_df = 0
				temp_db = 0
				#sequence cycle 0..3
				0.upto(@sequence_size-1) do |dx|
					temp_h += @grid[row][column+dx].to_i # horiz
					temp_v += @grid[column+dx][row].to_i # vert
					temp_df += @grid[column+dx][column+dx].to_i # diag_f
					temp_db += @grid[-(column+dx+1)][-(column+dx+1)].to_i # diag_b
				end
				
			end
			partial_max = temp_h if temp_h > partial_max
			partial_max = temp_v if temp_v > partial_max
			partial_max = temp_df if temp_df > partial_max
			partial_max = temp_db if temp_db > partial_max
		end
		
		partial_max
	
	
	end


end
