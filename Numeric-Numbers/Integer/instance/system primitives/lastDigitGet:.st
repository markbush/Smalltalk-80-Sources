lastDigitGet: digit
	"Store the argument, digit, as the last digit of the integer."

	^self at: self digitLength put: digit
