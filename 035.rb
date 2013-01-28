require "mathn"

# How many circular primes are there below one million?
# 55

class Euler35

	MAX = 1000000

	def initialize
	
	end
	
	
	def solve
		counter = 0
		Prime.each(MAX) do |prime|

			if circular_prime(prime)
				puts prime
				counter += 1 
			end
		end
		counter
	end
	
	def circular_prime(prime)
		rotations = prime.to_s.length - 1
		curr_str = prime.to_s
		while rotations > 0
			rotations -= 1
			curr_str = rotate_string(curr_str)
			to_test = curr_str[0] == "0" ? curr_str[1..(curr_str.length-1)] : curr_str
			return false if !Prime.prime?(to_test.to_i)
		end
		return true
	end
	
	def rotate_string(str)
		str[1..(str.length-1)] + str[0]
	end
	
	def test_rotations(prime)
		rotations = prime.to_s.length
		curr_str = prime.to_s
		while rotations > 0
			curr_str = rotate_string(curr_str)
			puts "R#{rotations}: #{curr_str}"
			rotations -= 1
		end
	end

end

=begin
2
3
5
7
11 11
13 31
17 71
37 73
79 97
101 11 <- NOT
103
107
113
131
197
199
307
311
337
373
701
709
719
733
907
919
971
991
=end
