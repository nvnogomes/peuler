
# Using a brute force attack, can you decrypt the cipher using XOR encryption?

class Euler59

	@raw_messages

	attr_reader :raw_messages

	def initialize(url="059_cipher1.txt")
		@message = read_message(url)
	end
	
	def read_message(url)
		matrix = nil
		File.open(url,"r") do |file|
			line = file.gets.scan(/\d+/)
			matrix = line
		end
		matrix
	end
	
	
	def solve
		keys = compute_keys
		@raw_messages = Array.new
		keys.each do |key|
			raw = decipher_message(key)
			@raw_messages.push( raw ) if raw.include?(32)
		end
		@raw_messages.size
		search_result
	end

	
	def search_result
		0.upto(@raw_messages.size-1) do |i|
			puts @raw_messages[i].pack('C*')[0..50]
		end
	end
	
	def compute_keys
		# generate combinations
		possibilities = Array.new
		key_number = Array.new
		('a'..'z').each do |c1|
			('a'..'z').each do |c2|
				('a'..'z').each do |c3|
					aux = [c1,c2,c3].sort.join
					possibilities.push( aux )
				end
			end
		end
		puts "keys #{possibilities.size}"
		possibilities
	end
	

	def decipher_message(key)
		codes = @message
		
		message = codes
		codes = Array.new
		message.each do |code|
			# puts "#{code.to_i} #{key_char.ord}"
			codes.push( code.to_i ^ (key[0].ord + key[1].ord + key[2].ord ))
		end	
		
		codes
	end
	
	def message_text(array)
		array.pack('C*')
	end
end
