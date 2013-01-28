
# Find the longest sequence using a starting number under one million.
# 837799

class Euler14

	@max_starter
	@even
	@odd

	def initialize(max=1000000)
		@max_starter = max
		@even = lambda { |n| n / 2 }
		@odd = lambda { |n| 3*n + 1 }
	end

	def solve
		max_sequence = 0
		sequence_number = 2
		2.upto(@max_starter) do |number|
			counter = 0
			sequence = number
			while sequence > 1
				sequence = sequence.even? ? @even.call(sequence) : @odd.call(sequence)
				counter += 1
			end
			
			if counter > max_sequence
				max_sequence = counter 
				sequence_number = number
			end
		end
		puts "MaxSeqSize #{max_sequence} by #{sequence_number}"
	end
	

end
