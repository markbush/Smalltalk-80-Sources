daysInMonth
	"Answer the number of days in the month represented by the receiver."

	^(DaysInMonth at: self monthIndex)
		+ (self monthIndex = 2
				ifTrue: [self leap]
				ifFalse: [0])
