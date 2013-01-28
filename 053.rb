
# How many values of C(n,r), for 1 ≤ n ≤ 100, exceed one-million?
# 23C10 first with result greater than 1000000
# 4075

class Euler53

	attr_reader :memory

	def initialize(n=100,l=1000000)
		@n = n
		@limit = l
		
		@memory = {}
	end
	
	
	def solve
		counter = 0
		23.upto(@n) do |n|
			puts n
			1.upto(@n-1) do |r|
				nCr = perm(n).fdiv( perm(r) * perm(n-r) )
				counter += 1 if nCr > @limit
			end
		end
		counter
	end


	def perm(n)
		if !@memory.include?(n)
			acc = 1
			while n > 1
				acc *= n
				n -= 1
			end
			@memory[n] = acc
		end
		@memory[n]
	end
end
