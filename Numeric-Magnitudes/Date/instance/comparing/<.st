< aDate
	"Answer whether aDate precedes the date of the receiver."

	year = aDate year
		ifTrue: [^day < aDate day]
		ifFalse: [^year < aDate year]
