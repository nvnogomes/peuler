
# Find the sum of all numbers less than one million, which are palindromic in base 10 and base 2.
# 872187

class Euler36

	@limit 
	
	def initialize(max=999999)
		@limit = max
	end
	
	def solve
		sum = 0
		1.upto(@limit) do |number|
			sum += number if is_palindrome?(number.to_s) && is_palindrome?(number.to_s(2))
		end
		sum
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
