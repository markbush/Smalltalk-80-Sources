timeStamp: aStream
	"Writes system version and current time on stream aStream."

	| dateTime |
	dateTime _ Time dateAndTimeNow.
	aStream nextPutAll: 'From ', Smalltalk version, ' on ', (dateTime at: 1) printString,
						' at ', (dateTime at: 2) printString
