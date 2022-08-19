dayOfMonth
	"Answer which day of the month is represented by the receiver."

	^day - (self firstDayOfMonthIndex: self monthIndex) + 1
