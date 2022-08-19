fromDays: dayCount
	"Answer an instance of me that is dayCount days after Jan 1 1901."
	^self
		newDay: 1 + (dayCount truncated rem: 1461)
							"There are 1461 days in a 4-year cycle.
							 2000 is a leap year, so no extra correction is necessary. "
		year: 1901 + ((dayCount truncated quo: 1461) * 4)
