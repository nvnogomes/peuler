
# Find the greatest product of five consecutive digits in the 1000-digit number.
# 40824

class Euler8

	@number_array

	def initialize
		@number_array = load_file
	end
	
	def load_file
		digits_array = Array.new
		File.open("008_number.txt","r") do |file|
			while line = file.gets
				line_array = line.scan(/./)
				digits_array.push(*line_array)
			end
		end
		digits_array
	end
	
	
	def solve
		max_product = 0
		five_a_time(@number_array) do |a,b,c,d,e|
			current_product = a.to_i * b.to_i * c.to_i * d.to_i * e.to_i
			max_product = current_product if current_product > max_product
		end
		max_product
	end
	
	
	def five_a_time(array)
		0.upto(array.length-5) do |i|
			arr1 = array[i]
			arr2 = array[i+1]
			arr3 = array[i+2]
			arr4 = array[i+3]
			arr5 = array[i+4]
			yield arr1, arr2, arr3, arr4, arr5
		end
	end


end
