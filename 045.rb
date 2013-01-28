
# After 40755, what is the next triangle number that is also pentagonal and hexagonal?

class Euler45

	@start_number
	@triangle
	@pentagonal
	@hexagonal

	def initialize(interval=100000)
		@start_number = 144
		
		@triangle = fill_array(interval) { |n| n*(n+1)/2 }
		@pentagonal = fill_array(interval) { |n| n*(3*n-1)/2 }
		@hexagonal = fill_array(interval) { |n| n*(2*n-1) }
	end

	def fill_array(interval_limit,&block)
		array = Array.new
		@start_number.upto(interval_limit) do |i|
			array.push(block.call(i))
		end
		array
	end

	def solve
		result = 0
		@hexagonal.each do |number|
			if @pentagonal.member?(number) && @triangle.member?(number)
				result = number 
				break
			end
		end
		result

	end


end
