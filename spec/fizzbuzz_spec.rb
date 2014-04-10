require 'rspec'
require './fizzbuzz'

describe FizzBuzz do

	let(:fizzbuzz_result_array) {
		[ 1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz', 11,
			'Fizz', 13, 14, 'FizzBuzz', 16, 17, 'Fizz', 19, 'Buzz',
			'Fizz', 22, 23, 'Fizz', 'Buzz', 26, 'Fizz', 28, 29, 'FizzBuzz',
			31, 32, 'Fizz', 34, 'Buzz', 'Fizz', 37, 38, 'Fizz', 'Buzz', 41,
			'Fizz', 43, 44, 'FizzBuzz', 46, 47, 'Fizz', 49, 'Buzz', 'Fizz',
			52, 53, 'Fizz', 'Buzz', 56, 'Fizz', 58, 59, 'FizzBuzz', 61, 62,
			'Fizz', 64, 'Buzz', 'Fizz', 67, 68, 'Fizz', 'Buzz', 71, 'Fizz',
			73, 74, 'FizzBuzz', 76, 77, 'Fizz', 79, 'Buzz', 'Fizz', 82, 83,
			'Fizz', 'Buzz', 86, 'Fizz', 88, 89, 'FizzBuzz', 91, 92, 'Fizz',
			94, 'Buzz', 'Fizz', 97, 98, 'Fizz', 'Buzz' ]
	}
	let(:fizzbuzz_result_string) { fizzbuzz_result_array.join("\n") }

	{ 1 => 1, 2 => 2, 3 => 'Fizz', 4 => 4, 5 => 'Buzz', 6 => 'Fizz',
		7 => 7, 8 => 8, 9 => 'Fizz', 10 => 'Buzz', 11 => 11, 12 => 'Fizz',
		13 => 13, 14 => 14, 15 => 'FizzBuzz', 30 => 'FizzBuzz'
	}.each do |number, output|
		it "prints number #{number} according to FizzBuzz rules" do
			expect(number.to_fizzbuzz).to eq output
		end
	end

	it 'returns array according to FizzBuzz rules' do
		expect(FizzBuzz.to_a).to eq fizzbuzz_result_array
	end

	it 'prints 1 through 100 according to FizzBuzz rules' do
		expect(FizzBuzz.to_s).to eq fizzbuzz_result_string
	end

end