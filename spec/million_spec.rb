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

	it 'prints "eleven" for 11' do
		expect(returns_word_number(2)).to eq 'eleven'
	end

	xit 'prints "twenty" for 20' do
		expect(returns_word_number(2)).to eq 'two'
	end

	xit 'prints "one hunded" for 100' do
		expect(returns_word_number(2)).to eq 'two'
	end

end

	