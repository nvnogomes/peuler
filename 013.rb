
# Find the first ten digits of the sum of 1050-digit number.

class Euler13

	@digits

	def initialize
		@digits = load_file
	end
	
	def load_file
		digits_array = Array.new
		File.open("013_number.txt","r") do |file|
			while line = file.gets
				line_number = line.to_i
				digits_array.push(line_number)
			end
		end
		digits_array
	end
	
	
	def solve
		sum = 0
		@digits.each do |digit|
			sum += digit.to_i
		end
		sum
	end



end
