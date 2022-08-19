newDay: dayCount year: referenceYear
	"Answer with a Date which is dayCount days after the beginning of the
	year referenceYear."

	| day year daysInYear |
	day _ dayCount.
	year _ referenceYear.
	[day > (daysInYear _ self daysInYear: year)]
		whileTrue:
			[year _ year + 1.
			 day _ day - daysInYear].
	[day <= 0]
		whileTrue:
			[year _ year - 1.
			 day _ day + (self daysInYear: year)].
	^self new day: day year: year
