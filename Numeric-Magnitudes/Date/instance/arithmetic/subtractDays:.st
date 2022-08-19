subtractDays: dayCount
	"Answer a new Date that is dayCount days before the receiver."

	^Date newDay: day - dayCount year: year
