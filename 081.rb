
# Find the minimal path sum from the top left to the bottom right by moving right and down.
# DIJKSTRA ALGORITHM

class Euler81

	

	def initialize(url="081_matrix.txt")
		@url = url
		@matrix = load_matrix
		@size = @matrix.size
	end
	
	
	def load_matrix
		matrix = Array.new
		File.open(@url,"r") do |file|
			while line = file.gets
				line_array = line.scan(/\d+/)
				matrix.push(line_array)
			end
		end
		matrix
	end
	
	
	def solve
		x = 0
		y = 0
		sum = @matrix[x][y].to_i
		while x < @size && y < @size
			
			if @matrix[x+1][y].to_i < @matrix[x][y+1].to_i && x+1 <= @size
				sum += @matrix[x+1][y].to_i
				x += 1
			
			elsif @matrix[x][y+1].to_i < @matrix[x+1][y].to_i && y+1 <= @size
				sum += @matrix[x][y+1].to_i
				y += 1
			else
				puts "Err"
				break
			end
			puts "#{x} #{y}"
		end
		
		sum
	end
	

end
