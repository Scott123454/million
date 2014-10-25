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

	it 'prints "ninety nine" for 99' do
		expect(returns_word_number(99)).to eq 'ninety nine'
	end	

	it 'prints "one hunded and one" for 101' do
		expect(returns_word_number(101)).to eq 'one hundred and one'
	end

	it 'prints "one hunded and eleven" for 111' do
		expect(returns_word_number(111)).to eq 'one hundred and eleven'
	end

	it 'prints "one hunded and twenty one" for 121' do
		expect(returns_word_number(121)).to eq 'one hundred and twenty one'
	end

	it 'prints "one hunded and ninety eight" for 198' do
		expect(returns_word_number(198)).to eq 'one hundred and ninety eight'
	end

	it 'prints "three hunded and twenty six" for 326' do
		expect(returns_word_number(326)).to eq 'three hundred and twenty six'
	end

	it 'prints "nine hundred and ninety nine" for 999' do
		expect(returns_word_number(999)).to eq 'nine hundred and ninety nine'
	end	

	it 'prints "one thousand nine hundered and fifty seven" for 1957' do
		expect(returns_word_number(1957)).to eq 'one thousand nine hundred and fifty seven'
	end

	it 'prints "nine thousand nine hundered and ninety nine" for 1999' do
		expect(returns_word_number(1999)).to eq 'one thousand nine hundred and ninety nine'
	end
		

	it 'prints "nine thousand nine hundered and ninety nine" for 9999' do
		expect(returns_word_number(9999)).to eq 'nine thousand nine hundred and ninety nine'
	end

	it 'prints "ninety nine thousand nine hundred and ninety nine" for 99999' do
		expect(returns_word_number(99999)).to eq 'ninety nine thousand nine hundred and ninety nine'
	end

	it 'prints "ninety nine thousand nine hundred and ninety one" for 99991' do
		expect(returns_word_number(99991)).to eq 'ninety nine thousand nine hundred and ninety one'
	end

	it 'prints "eighty seven thousand five hundred and sixty nine" for 87569' do
		expect(returns_word_number(87569)).to eq 'eighty seven thousand five hundred and sixty nine'
	end

	# it 'prints "nine hundred and ninety nine thousand nine hundred and ninety nine" for 999999' do
	# 	expect(returns_word_number(999999)).to eq 'nine hundred and ninety nine thousand nine hundred and ninety nine'
	# end

	# it 'prints "three hundred and twenty six thousand nine hundred and ninety four" for 326994' do
	# 	expect(returns_word_number(326994)).to eq 'three hundred and twenty six thousand nine hundred and ninety four'
	# end


end

	