NUMBER_TO_WORDS={
	1 => 'one',
	2 => 'two',
	3 => 'three',
	4 => 'four',
	5 => 'five',
	6 => 'six',
	7 => 'seven',
	8 => 'eight',
	9 => 'nine',
	10 => 'ten',
	11 => 'eleven',
	12 => 'twelve',
	13 => 'thirteen',
	14 => 'fourteen',
	15 => 'fifthteen',
	16 => 'sixteen',
	17 => 'seventeen',
	18 => 'eighteen',
	19 => 'nineteen',
	20 => 'twenty',
	30 => 'thirty',
	40 => 'forty',
	50 => 'fifty',
	60 => 'sixty',
	70 => 'seventy',
	80 => 'eighty',
	90 => 'ninety',
	100 => 'one hundred',
	1000 => 'one thousand',
	100000 => 'ten thousand',
	1000000 => 'one million'
}

def last_digit(number)
	rounded = rounded(number)
	difference = number - (rounded * 100) 
	newdifference = rounded(difference) 
	if newdifference > 21
		last_digit = difference - newdifference
		NUMBER_TO_WORDS[last_digit]
	end
end

def rounded(number)
	if number < 100
		(number / 10) * 10
	elsif number.between?(100, 1000)
		(number/100) 
	elsif number.between?(1000, 100000)
		(number/1000)
	elsif number.between?(10000, 1000000)
		(number/1000)
	end
end

def returns_word_number(number)
	if number.between?(20, 100)
		twenty_to_onehundred(number)
	elsif
		number.between?(100, 1000)
		one_hundred_to_one_thousand(number)
	elsif
		number.between?(1000, 10000)
		one_thousand_to_ten_thousand(number)
	elsif number.between?(10000, 100000)
		one_thousand_to_one_hundred_thousand(number)
	elsif number.between?(100000, 1000000)
		one_hundred_thousand_to_one_million(number)
	else
		NUMBER_TO_WORDS[number]
	end
end

def twenty_to_onehundred(number)
	get_rounded_word(number) + ' ' + get_difference_word(number)
end

def one_hundred_to_one_thousand(number)
	last = last_digit(number) 
	if last_digit(number) == nil
	    get_rounded_word(number) + ' ' + 'hundred' + ' ' + 'and' + ' ' + get_difference_word_hundred(number)
	    # + get_difference_word_hundred(number)
	else
		get_rounded_word(number) + ' ' + 'hundred' + ' ' + 'and' + ' ' + get_difference_word_hundred(number) + ' ' + last_digit(number) 
	end 
	# twenty_to_onehundred
	# one hundred and ninety nine 
end


def one_thousand_to_ten_thousand(number)
	number_of_thousands = rounded(number)
	remainder = number_of_thousands * 1000
	hundreds_number = number - remainder
	NUMBER_TO_WORDS[number_of_thousands] + ' ' + 'thousand' + ' ' + one_hundred_to_one_thousand(hundreds_number)
end

def one_thousand_to_one_hundred_thousand(number)
	number_of_thousands = rounded(number)
	remainder = number_of_thousands * 1000
	hundreds_number = number - remainder
	twenty_to_onehundred(number_of_thousands) + ' ' + 'thousand' + ' ' + one_hundred_to_one_thousand(hundreds_number) 
end

def one_hundred_thousand_to_one_million(number)
	number_of_thousands = rounded(number)
	puts number_of_thousands
	remainder = number_of_thousands * 1000
	puts remainder
	hundreds_number = number - remainder
	puts hundreds_number
	one_hundred_to_one_thousand(number_of_thousands) 
	# + ' ' + 'thousand' + ' ' + one_hundred_to_one_thousand(hundreds_number) 
end

def get_rounded_word(number)
	rounded = rounded(number)
	roundedword = NUMBER_TO_WORDS[rounded]
end

def get_difference_word_hundred(number)
	rounded = rounded(number) 
	difference = number - (rounded * 100) 
	newdifference = rounded(difference)
	
	puts difference
	puts newdifference



	
	if newdifference < 21
		NUMBER_TO_WORDS[difference]
	else
		NUMBER_TO_WORDS[newdifference]
	end

end

# puts get_difference_word_hundred(326)
# puts last_digit(326)

def get_difference_word(number)
	rounded = rounded(number)
	difference = number - rounded 
	differenceword = NUMBER_TO_WORDS[difference]
end

# puts get_difference_word_hundred(326)
# puts one_hundred_to_one_thousand(346)
# puts one_hundred_thousand_to_one_million(326994)
# puts one_thousand_to_ten_thousand(9999)
