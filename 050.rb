require "mathn"

# Which prime, below one-million, can be written as the sum of the most consecutive primes?
# 997651

=begin
solução proposta
encontrar todos os números primos até que a soma seja inferior a 1M.
somar todas as sequencias a partir dos numeros primos
=end

class Euler50

	@prime_arr
	@limit

	def initialize(number=1000000)
		@limit = number
		@prime_arr = Array.new

	end


	def solve
		biggest = 0
		max = get_primes

		i = 0
		loop do

			sum = @prime_arr.at(i)
			j = i+1

			loop do
				sum += @prime_arr.at(j)

				if sum.prime? && sum > biggest then
						biggest = sum
						puts "> #{biggest} #{j-i}"
				end

				j += 1
				break if j == max || sum > @limit
			end

			i += 1
			break if (i+1) == max
		end

		biggest
	end


	def get_primes
		sum = 0

		Prime.each(@limit) do |current_prime|

			@prime_arr << current_prime
			sum += current_prime

			break if sum > @limit

		end
		@prime_arr.length
	end


end
