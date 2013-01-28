
# How many primitive integer sided triangles exist with a perimeter not exceeding 10 000 000? 

class Euler276

	def initialize(p=10000000)
		@max_perimeter = p
		
		solve
	end

	def solve
		counter = 0
		1.upto(@max_perimeter) do |a|
			a.upto(@max_perimeter) do |b|
				b.upto(@max_perimeter) do |c|
					break if a+b+c > @max_perimeter
					counter += 1 if a.gcd(b.gcd(c)) == 1
				end
			end
		end
		counter
	end


end
