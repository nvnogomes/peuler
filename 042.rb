
# How many triangle words does the list of common English words contain?

class Euler42

	@alphabet
	@words
	@tn


	def initialize(tn_size=1000)
		@alphabet = construct_alphabet
		@words = load_file
		@tn = construct_tn(tn_size=1000)
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
	
	def load_file
		name_array = Array.new
		File.open("042_words.txt","r") do |file|
			name_array = file.gets.scan(/\w+/)
		end
		name_array
	end
	
	def construct_tn(size)
		Array.new(size) { |n| (n*(n+1))/2 }
	end
	
	
	
	def solve
		triangle_words = 0
		@words.each do |word|
			word_score = 0
			word_arr = word.chars.to_a
			word_arr.each do |letter|
				word_score += @alphabet[letter]
			end
			
			triangle_words += 1 if @tn.include?(word_score)
		end
		triangle_words
	end

end
