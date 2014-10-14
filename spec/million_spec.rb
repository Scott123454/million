require 'million.rb'

describe 'Print words one to one million' do


	it 'prints "one" for 1' do
		expect(returns_word_number(1)).to eq 'one'
	end

	it 'prints "two" for 2' do
		expect(returns_word_number(2)).to eq 'two'
	end

	it 'prints "ten" for 10' do
		expect(returns_word_number(10)).to eq 'ten'
	end

	it 'prints "twenty one" for 20' do
		expect(returns_word_number(21)).to eq 'twenty one'
	end


	it 'prints "ninety one" for 91' do
		expect(returns_word_number(91)).to eq 'ninety one'
	end	

	it 'prints "one hunded and one" for 101' do
		expect(returns_word_number(101)).to eq 'one hundred and one'
	end

end

	