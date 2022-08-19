readFrom: aStream
	"Read a Date from the stream in any of the forms:
		<day> <monthName> <year>		(5 April 1982; 5-APR-82)
		<monthName> <day> <year>		(April 5, 1982)
		<monthNumber> <day> <year>	(4/5/82)"

	| day month |
	aStream peek isDigit ifTrue: [day _ Integer readFrom: aStream].
	[aStream peek isAlphaNumeric] whileFalse: [aStream skip: 1].
	aStream peek isLetter
		ifTrue:		"number/name... or name..."
			[month _ WriteStream on: (String new: 10).
			[aStream peek isLetter] whileTrue: [month nextPut: aStream next].
			month _ month contents.
			day isNil ifTrue:		"name/number..."
				[[aStream peek isAlphaNumeric] whileFalse: [aStream skip: 1].
				day _ Integer readFrom: aStream]]
		ifFalse:		"number/number..."
			[month _ Date nameOfMonth: day.
			day _ Integer readFrom: aStream].
	[aStream peek isAlphaNumeric] whileFalse: [aStream skip: 1].
	^self newDay: day month: month year: (Integer readFrom: aStream)

	"Date readFrom: (ReadStream on: '5APR82')"
