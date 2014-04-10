# Just do `puts FizzBuzz` to output a FizzBuzz

module FizzBuzz
	def self.to_a
		(1..100).map(&:to_fizzbuzz)
	end
	def self.to_s
		to_a * 10.chr
	end
end

class Integer
	def to_fizzbuzz
		by_3 = self % 3 == 0
		by_5 = self % 5 == 0
		if by_3 and by_5
			'FizzBuzz'
		elsif by_3
			'Fizz'
		elsif by_5
			'Buzz'
		else
			self
		end
	end
end