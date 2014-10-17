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

def returns_word_number(number)
	if number.between?(20, 100)
		twenty_to_onehundred(number)
	elsif
		number.between?(100, 1000)
		one_hundred_to_one_thousand(number)
	elsif
		number.between?(1000, 10000)
		one_thousand_to_ten_thousand(number)
	else
		NUMBER_TO_WORDS[number]
	end
end


def twenty_to_onehundred(number)
	get_rounded_word(number) + ' ' + get_difference_word(number)
end

def one_hundred_to_one_thousand(number)
	get_rounded_word(number) + ' ' + 'hundred' + ' ' + 'and' + ' ' + @hundred_difference
	# twenty_to_onehundred
	# one hundred and ninety nine 
end

def one_thousand_to_ten_thousand(number)
	get_rounded_word(number)
end

def one_thousand_to_one_hundred_thousand(number)
	get_rounded_word(number) + ' ' + 'and' + ' '  
end

def rounded(number)
	if number < 100
		(number / 10) * 10
	elsif number >= 100
		divide_by_a_hundred = (number/100) 
		difference = number - (divide_by_a_hundred * 100)
		@hundred_difference = rounded(difference)
		divide_by_a_hundred
		# the issus is the difference of say 98 needs to go throught the rounding filter again
	end
end

def get_rounded_word(number)
	rounded = rounded(number)
	roundedword = NUMBER_TO_WORDS[rounded]
end

puts get_rounded_word(199)

def get_difference_word(number)
	rounded = rounded(number)
	difference = number - rounded 
	differenceword = NUMBER_TO_WORDS[difference]
end


# def hundreds(number)
# 	number_of_hundreds = (number/100).round
# 	number_of_hundreds_word = NUMBER_TO_WORDS[number_of_hundreds]
# 	number_of_hundreds_word + ' ' + 'hundred'
# end

# def thousands(number)
# 	number_of_thousands = (number/100).round
# 	number_of_thousands_word = NUMBER_TO_WORDS[number_of_hundreds]
# 	number_of_thousands_word + ' ' + 'hundred'
# end

# def number_tester(number)
# 	if (number/1000) >= 1
# 	thousands
# 	elsif (number /100) >= 1
# 	hundreds
# 	end
# end

# def new(number)
# 	hundreds(number)

# end

