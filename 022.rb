
# What is the total of all the name scores in the file of first names?
# 871198282

class Euler22

	@names
	@alphabet
	
	def initialize
		@names = load_file
		@alphabet = construct_alphabet
	end
	
	
	def load_file
		name_array = Array.new
		File.open("022_names.txt","r") do |file|
			name_array = file.gets.scan(/\w+/)
			name_array.sort!
		end
		name_array
	end
	
	
	def construct_alphabet
		hash = {}
		position = 1
		("A".."Z").each do |letter|
			hash[letter] = position
			position += 1
		end
		hash
	end
	
	
	def solve
		scores = 0
		position = 1
		@names.each do |name|
			name_score = 0
			name_arr = name.chars.to_a
			name_arr.each do |letter|
				name_score += @alphabet[letter]
			end
			scores += position * name_score
			position += 1
		end
		scores
	end

end
