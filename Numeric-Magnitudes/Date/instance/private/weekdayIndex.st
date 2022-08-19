weekdayIndex
	"Sunday=1, ... , Saturday=7"

	| yearIndex dayIndex |
	day < (self firstDayOfMonthIndex: 3)
		ifTrue:
			[yearIndex _ year - 1.
			dayIndex _ 307]
		ifFalse:
			[yearIndex _ year.
			dayIndex _ -58 - self leap].

	^dayIndex + day + yearIndex + (yearIndex // 4)
				+ (yearIndex // 400) - (yearIndex // 100) \\ 7 + 1
