daysInMonth: monthName forYear: yearInteger
	"Answer the number of days in the month named monthName in the
	year yearInteger."

	^(self newDay: 1
		  month: monthName
		  year: yearInteger) daysInMonth
