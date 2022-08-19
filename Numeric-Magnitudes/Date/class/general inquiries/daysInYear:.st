daysInYear: yearInteger
	"Answer the number of days in the year, yearInteger."

	^365 + (self leapYear: yearInteger)
