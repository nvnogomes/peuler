require "mathn"

# Determining the kth element of the sorted radical function.
# 21417

class Rad
	include Enumerable
	
	attr_reader :radf_value,:number
	
	def initialize(n)
		@number = n
		@radf_value = radical_function
	end
	
	def radical_function
		value = 1
		Prime.prime_division(@number).each do |fac,exp|
			value *= fac
		end
		value
	end

	# Support for sort
	def <=>(other)
		if self.radf_value > other.radf_value
			return 1
		elsif self.radf_value < other.radf_value
			return -1
		else
			return self.number <=> other.number
		end
	end
	
	def to_s
		puts "N#{@number} R#{@radf_value}"
	end
	
end


class Euler124

	def initialize(position=10000)
		@@loop = 100000;
		@position = position
		@array = Array.new
	end
	
	
	def solve
		1.upto(@@loop) do |number|
			@array.push( Rad.new(number) )
		end
		@array.sort!
		@array[@position-1]
	end
	
	

end
