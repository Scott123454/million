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
	else
		NUMBER_TO_WORDS[number]
	end
end

def twenty_to_onehundred(number)
	rounded = number.round(-1)
	difference = number - rounded 
	roundedword = NUMBER_TO_WORDS[rounded]
	differenceword = NUMBER_TO_WORDS[difference]
	roundedword + ' ' + differenceword
end

