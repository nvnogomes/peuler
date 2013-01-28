require 'date'

# How many Sundays fell on the first of the month during the twentieth century?
# (1 Jan 1901 to 31 Dec 2000)
# 171

class Euler19



	def solve
	
		week_day = 1
		first_sundays = 0
		date_iterator = Date.new(1901,1,1)
		
		1.upto(100) do |year|
			
			12.times do		
				first_sundays += 1 if date_iterator.cwday == 7
				date_iterator = date_iterator.next_month
			end

		end
		first_sundays
	end
	
	def leap_year(year)
		year.modulo(4) == 0 && year.modulo(100) != 0 || year.modulo(400) == 0
	end
	
end
