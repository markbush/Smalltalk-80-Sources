subtractDate: aDate
	"Answer the number of days between the receiver and aDate."

	year = aDate year
		ifTrue: [^day - aDate day]
		ifFalse: [^year - 1 // 4 - (aDate year // 4) + day
						+ aDate daysLeftInYear + (year - 1 - aDate year * 365)]
