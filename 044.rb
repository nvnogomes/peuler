#Find the pair of pentagonal numbers, Pj and Pk, for which their 
# sum and difference is pentagonal and D = |Pk − Pj| is minimised; 
# what is the value of D?


class Euler44

	# array holder for the pentagons
	@pentagons
	@results

	def initialize(reps=100)
		@pentagons = Array.new(reps){ |i| i*(3*i-1)/2 }
		@pentagons.delete(0)
		#@results = Array.new(50)
	end


	def solve
		@pentagons.length.times do |i|
			x = @pentagons[i]
			@pentagons.length.times do |j|
				y = @pentagons[j]
				check_result(x,y)
			end
		end

		print @results.to_s
	end

	def check_result(x,y)
		pi = x*(3*x-1)/2
		pj = y*(3*y-1)/2

		if @pentagons.include?(pi-pj)
			if @pentagons.include?(pi+pj)
				puts pi-pj
			end
		end

		if @pentagons.include?(pj-pi)
			if @pentagons.include?(pj+pi)
				puts pj-pi
			end
		end
	end
end

