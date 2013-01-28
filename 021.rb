
# Evaluate the sum of all amicable pairs under 10000.
# 31626

class Euler21

	@limit

	def initialize(max=10000)
		@limit = max
	end
	
	
	def solve
		amicable_sum = 0
		inserted = Hash.new
		
		dn = init_d
		
		1.upto(@limit) do |n|
			x = dn[n]
			pair_key = make_pair_key(n,x)
			if dn[x] == n && x != n && !inserted.key?(pair_key)
				amicable_sum += n + x
				inserted[pair_key] = true
				puts "#{n} #{x}"
			end

		end
		amicable_sum
	end
	
	
	def init_d
		dn = Hash.new
		1.upto(@limit) do |n|
			dn[n] = sum_of_divisors(n)
		end
		dn
	end
	
	
	
	def make_pair_key(a,b)
		if a > b
			b.to_s.concat a.to_s
		else
			a.to_s.concat b.to_s
		end
	end


	def sum_of_divisors(number)
		divisor = number-1
		sum = 1
		while divisor > 1
			sum += divisor if number.modulo(divisor) == 0
			divisor -= 1
		end
		sum
	end


end
