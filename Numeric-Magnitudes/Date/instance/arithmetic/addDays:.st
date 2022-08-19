addDays: dayCount
	"Answer a new Date that is dayCount more days than the receiver."

	^Date newDay: day + dayCount
		  year: year
