
# Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.
# upper limit 28123

# 1st find all abundant number up to 28123
# 2nd sum the number with himself and all of 
# the successors and save it in a record
# 3rd sum all the number that doesnt exist 
# in the record up to 28123
# O( n + (n*n)/2 )

class Euler23

    @upper_limit
    
    
    def initialize(limit)
        @upper_limit = limit
    end


    def get_abundant_numbers(limit) 
        
        1.upto(limit) do |index|
        
        end
        
        }
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
