
# Find the only Pythagorean triplet, {a, b, c}, for which a + b + c = 1000.
# 31875000

class Euler9

	@sum
	
	
	def initialize(sum=1000)
		@sum = sum
	end
	
	
	def solve
		product = 0
		1.upto(@sum) do |a|
			a.upto(@sum) do |b|
				b.upto(@sum) do |c|
					if( a**2 + b**2 == c**2 && a+b+c == @sum)
						product = a*b*c
						return product
					end
				end
			end
		end
		product
	end


end
