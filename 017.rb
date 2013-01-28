
# How many letters would be needed to write all the numbers in words from 1 to 1000?
# 21124

class Euler17

	@limit
	@number_names

	
	def initialize(max)
		if max > 1000
			@limit = 1000
		else
			@limit = max
		end
		
		@number_names = {0=>'',1=>'one',2=>'two',3=>'three',4=>'four',5=>'five',6=>'six',7=>'seven',8=>'eigth',9=>'nine',10=>'ten',11=>'eleven',12=>'twelve',13=>'thirteen',14=>'fourteen',15=>'fifteen',16=>'sixteen',17=>'seventeen',18=>'eighteen',19=>'nineteen',20=>'twenty',30=>'thirty',40=>'forty',50=>'fifty',60=>'sixty',70=>'seventy',80=>'eighty',90=>'ninety',100=>'hundred',101=>'hundredand',1000=>'thousand'}
	end
	
	
	def solve
		str = ''
		1.upto(@limit) do |number|
			str.concat( number_name(number) )
		end
		puts str
		str.strip!
		str.length
	end

	
	def number_name(num)
		toRet = ''
		if num == 1000
			res = num.divmod(1000)
			toRet.concat @number_names[ res[0] ]
			toRet.concat @number_names[1000]
			return toRet
			
		elsif num >= 100
			res = num.divmod(100)
			k1 = (res[1] == 0) ? 0 : 1
			toRet.concat( @number_names[res[0]] )
			toRet.concat( @number_names[(100 + k1)] )
			toRet.concat( number_name(res[1]) )
			return toRet
			
		else
			return @number_names[num] if num <= 20
			res = num.divmod(10)
			toRet.concat( @number_names[(res[0]*10)] )
			toRet.concat( @number_names[res[1]] )
			return toRet
		end
	
	end


end
