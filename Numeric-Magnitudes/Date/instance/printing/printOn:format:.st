printOn: aStream format: formatArray
	"Print a description of the receiver on aStream.  The argument
	formatArray is the print format, where
	1-3	positions to print day,month,year respectively
	4	character separator
	5	month format (1 month #, 2 first 3 chars, 3 entire name)
	6	year format (1 year #, 2 year # \\ 100)"

	| monthIndex element monthFormat |
	monthIndex _ self monthIndex.
	1 to: 3 do:
		[:elementIndex |
		element _ formatArray at: elementIndex.
		element = 1 ifTrue: [day - self firstDayOfMonth + 1 printOn: aStream].
		element = 2
			ifTrue:
				[monthFormat _ formatArray at: 5.
				monthFormat = 1
					ifTrue: [monthIndex printOn: aStream].
				monthFormat = 2
					ifTrue: [aStream nextPutAll: ((MonthNames at: monthIndex)
													copyFrom: 1 to: 3)].
				monthFormat = 3
					ifTrue: [aStream nextPutAll: (MonthNames at: monthIndex)]].
		element = 3
			ifTrue:
				[(formatArray at: 6) = 1
					ifTrue: [year printOn: aStream]
					ifFalse: [(year \\ 100) printOn: aStream]].
		elementIndex < 3
			ifTrue:
				[(formatArray at: 4) ~= 0
					ifTrue: [aStream nextPut: (formatArray at: 4) asCharacter]]]
