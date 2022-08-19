printFormat: formatArray
	"Answer a string description of the receiver.  The argument
	formatArray is the print format, where
	1-3	positions to print day,month,year respectively
	4	character separator
	5	month format (1 month #, 2 first 3 chars, 3 entire name)
	6	year format (1 year #, 2 year # \\ 100)"

	| aStream |
	aStream _ WriteStream on: (String new: 16).
	self printOn: aStream format: formatArray.
	^aStream contents
