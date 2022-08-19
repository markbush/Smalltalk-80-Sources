firstDayOfMonthIndex: monthIndex
	"Answer the day of the year (an Integer) that is the first day of my month"

	^(FirstDayOfMonth at: monthIndex)
		+ (monthIndex > 2
				ifTrue: [self leap]
				ifFalse: [0])
