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

	it 'prints "one hunded and eleven" for 111' do
		expect(returns_word_number(111)).to eq 'one hundred and eleven'
	end

	xit 'prints "nine hundred and ninety nine" for 999' do
		expect(returns_word_number(999)).to eq 'nine hundred and ninety nine'
	end	
		
	xit 'prints "nine thousand nine hundered and ninety nine" for 9999' do
		expect(returns_word_number(9999)).to eq 'nine thousand nine hundered and ninety nine'
	end

	xit 'prints "ninety nine thousand nine hundered and ninety nine" for 99999' do
		expect(returns_word_number(99999)).to eq 'ninety nine thousand nine hundered and ninety nine'
	end

end

	