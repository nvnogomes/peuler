
# Find the unique positive integer whose square has the form 1_2_3_4_5_6_7_8_9_0, where each “_” is a single digit.

=begin
	lim inf 1010101010
	lim sup 1389026623
=end

class Euler206


	def initialize(limit=100)
		@reg = /1.2.3.4.5.6.7.8.9.0/
		@limit = limit
	end
	
	
	def solve
		result = 0
		10000.times do
			result = try(rand(100))
			break if result.to_i > 0
		end
		result
	end
	
	
	def try(n=0)
		srand(n)
		0.upto(@limit) do |number|
			string = "1"
			string.concat(rand(10).to_s).concat("2")
			string.concat(rand(10).to_s).concat("3")
			string.concat(rand(10).to_s).concat("4")
			string.concat(rand(10).to_s).concat("5")
			string.concat(rand(10).to_s).concat("6")
			string.concat(rand(10).to_s).concat("7")
			string.concat(rand(10).to_s).concat("8")
			string.concat(rand(10).to_s).concat("9")
			string.concat(rand(10).to_s).concat("0")
			puts string
			number = Math.sqrt(string.to_i)
			
			return number if number.class == Fixnum
		end
		"try again"
	end
	
	


end
