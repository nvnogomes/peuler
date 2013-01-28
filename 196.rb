require "mathn"

# Prime triplets
# Each positive integer has up to eight neighbours in the triangle.


class Euler196

	@sequence
	@@number

	def initialize
		@sequence = lambda { |n| (n*(n-1)).div(2) + 1 }
		@@number = 9
	end
	
	
	def solve
		max_prime_triangle = 0
		start_number = @sequence.call(@@number)
		end_number = start_number + @@number -1
		start_number.upto(end_number) do |number|
			
			#puts number
			if Prime.prime?(number)
				triplet = analise_triplet(number)	
				max_prime_triangle = triplet if triplet > max_prime_triangle
			end
		end
		max_prime_triangle
	end
	
	
	def analise_triplet(start_number)
		sum = 0
		current_number = start_number
		3.times do
			puts current_number
			sum += current_number if Prime.prime?(current_number)
			current_number = current_number.succ
		end
		sum
	end

end
