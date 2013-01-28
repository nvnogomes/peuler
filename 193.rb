require "mathn"
# Squarefree Numbers


class Euler193

	def initialize(max= 2**50)
		@top = max
	
	end
	
	
	def solve
		arr = Array.new
		Prime.each(@top) do |p|
			arr.push( p**2 )
			break if p**2 > @top
		end
		arr.uniq!
		@top - arr.size
	end

end
