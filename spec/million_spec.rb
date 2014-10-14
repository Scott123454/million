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

	xit 'prints "one hunded" for 100' do
		expect(returns_word_number(100)).to eq 'one hundred'
	end

end

	