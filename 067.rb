require "018.rb"

# Find the maximum sum travelling from the top of the triangle to the base. 100 lines
# 7273

class Euler67

	@triangle

	def initialize
		# load file
		@triangle = Array.new(100)
		line_number = 0
		File.open("067_triangle.txt","r") do |file|
			while line = file.gets
				@triangle[line_number] = process_line(line)
				line_number += 1
			end
		end
	end
	
	def process_line(line)
		digits_array = Array.new
		string_array = line.scan(/\w+/)
		string_array.each do |digit|
			digits_array.push(digit.to_i)
		end
		digits_array
	end


	def solve
		puts "#{@triangle.size}\n"
		eu = Euler18.new(100)
		eu.triangle = @triangle
		eu.solve
	end


end
