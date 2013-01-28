
# Find the largest palindrome made from the product of two 3-digit numbers.
# 906609

class Euler4

	@limit
	
	def initialize(max=999)
		@limit = max
	end
	
	
	def solve
		max = 0
		1.upto(@limit) do |first|
			1.upto(@limit) do |second|
				current = first * second
				max = current if( is_palindrome?(current.to_s) && current > max)
			end
		end
		max
	end


	def is_palindrome?(str)
		0.upto(str.size-1) do |index|
			rindex = -(index+1)
			# puts "#{str[index]} <#{str}> #{str[rindex]}"
			return false if str[index] != str[rindex]
		end
		return true
		
	end

end
