
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
	15 => 'fifteen',
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

class Yo

	def last_digit(number)
		rounded = rounded(number) 
		difference = number - (rounded * 100)    
		newdifference = rounded(difference)  
		last_digit = difference - newdifference  
		if difference > 20
			if last_digit > 0
				NUMBER_TO_WORDS[last_digit]
			end
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

	def run(number)
		i = 0
		num = 1000001

	    while i < num  do
		   	puts returns_word_number(i)
		   	i +=1
		end

	end

	def returns_word_number(number)
		if number.between?(21, 100)
			twenty_to_onehundred(number)
		elsif
			number.between?(100, 999)
			one_hundred_to_one_thousand(number)
		elsif
			number.between?(999, 10000)
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
		difference = get_difference_word(number)
		if difference == nil
			get_rounded_word(number) 
		else
			get_rounded_word(number) + ' ' + get_difference_word(number)
		end
	end

	def one_hundred_to_one_thousand(number)
		last = last_digit(number)
		difference = get_difference_word_hundred(number)
		if difference == nil
			get_rounded_word(number) + ' ' + 'hundred'
		else
			if last == nil
			    get_rounded_word(number) + ' ' + 'hundred' + ' ' + 'and' + ' ' + get_difference_word_hundred(number)
			else
				get_rounded_word(number) + ' ' + 'hundred' + ' ' + 'and' + ' ' + get_difference_word_hundred(number) + ' ' + last_digit(number) 
			end
		end 
	end

	def one_thousand_to_ten_thousand(number)
		number_of_thousands = rounded(number)
		remainder = number_of_thousands * 1000
		hundreds_number = number - remainder
		if hundreds_number == 0
			NUMBER_TO_WORDS[number_of_thousands] + ' ' + 'thousand'
		else
			NUMBER_TO_WORDS[number_of_thousands] + ' ' + 'thousand' + ' ' + one_hundred_to_one_thousand(hundreds_number)
		end
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
	end

	def get_rounded_word(number)
		rounded = rounded(number)
		roundedword = NUMBER_TO_WORDS[rounded]
	end

	def get_difference_word_hundred(number)
		rounded = rounded(number) 
		difference = number - (rounded * 100) 
		newdifference = rounded(difference) 
		if difference < 21
			NUMBER_TO_WORDS[difference]
		else
			NUMBER_TO_WORDS[newdifference]
		end

	end

	def get_difference_word(number)
		rounded = rounded(number)
		difference = number - rounded 
		if difference > 0
			differenceword = NUMBER_TO_WORDS[difference]
		end
	end

end
