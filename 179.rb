require "mathn"

# Consecutive positive divisors 

class Euler179

	 @limit
	 @array
	 @div_previous

	def initialize(max=10000000)
		@limit = max
		@div_previous = 0
		@array = Array.new
	end
	
	
	def solve_interval(ulimit,slimit)
		counter = 0
		ulimit.upto(slimit) do |x|
			counter += consecutive_test(x,x.succ)
			print "#{x}\n" if x.modulo(10000) == 0
		end
		counter
	end
	
	
	def solve_part1
		1.upto(@limit).each do |number|
			@array.push( number_of_divisors(number) )
		end
		return 1
	end
	
	def solve_part2
		counter = 0
		0.upto(@limit-1) do |index|
			pair = @array[index,2]
			counter += 1 if pair[0] == pair[1]
		end	
		counter
	end
	
	
	def solve
		counter = 0
		1.upto(@limit) do |x|
			counter += consecutive_test(x,x.succ)
			puts x if x.modulo(100000) == 0
		end
		counter
	end
	
	def consecutive_test(a,b)
		a_divs = @div_previous
		b_divs = number_of_divisors(b)
		@div_previous = b_divs
		return a_divs == b_divs ? 1 : 0
	end
	
	def number_of_divisors(number)
		factors = Prime.prime_division(number)
		divisors = 1
		factors.each do |factor,power|
			divisors *= power+1
		end
		divisors
	end

end
