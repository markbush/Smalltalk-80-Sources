currentTime: formatted
	"If formatted is #seconds, answer with the total seconds from Jan 1 1901
	corrected for time zone and daylight savings time.
	Otherwise, answer an array of (Date today, Time now).
	m570 and m571 are time zone specific parameters, set for California."

	| secondCount d dd t dfirst dlast m570 m571 |
	secondCount _ LargePositiveInteger new: 4.
	self secondClockInto: secondCount.
	secondCount _ secondCount truncated.
	m570 _ 16505.
	m571 _ 305.
	"adjust for time zone"
	secondCount _
		secondCount
			+ ((m570 >= 0
					ifTrue: [-1]	"west"
					ifFalse: [1]	"east")
				* (3600 * ((m570 bitAnd: 30720) bitShift: -11)
							+ (60 * ((m571 bitAnd: 32256) bitShift: -9)))).

	"Guess the number of days since Jan 1 1901."
	d _ Date fromDays: secondCount // 86400.

	"The formatted test makes it possible to skip some work if all you want is to correct
	the total number of seconds.  secondCount \\ 86400 is the number of seconds that
	were left over from the estimate of days"
	formatted==#seconds ifFalse: [t _ Time fromSeconds: secondCount \\ 86400].

	"check for daylight savings time (DST). correct DST parameters for nonleap
	years and round to previous Sunday if necessary"

	"day of the year on or before which DST takes effect"
	dfirst _ m570 bitAnd: 511.
	(dfirst = 366
		ifTrue: [false"DST not in effect"]
		ifFalse: [(dd _ d day) >= (dfirst _ dfirst + d leap - 1)
				ifTrue:
					["day of the year on or before which DST ends"
					dlast _ (m571 bitAnd: 511) + d leap - 1.
					dd < dlast and:
						[dd < ((Date newDay: dlast year: d year)
								previous: #Sunday) day]]
				ifFalse: ["possibly earlier than or at beginning of range"
						dd >= ((Date newDay: dfirst year: d year)
								previous: #Sunday) day]])
		ifTrue: [formatted==#seconds
					ifTrue: ["daylight savings time in effect. add an hour"
							secondCount _ secondCount + 3600]
					ifFalse: [t hours = 23
								ifTrue:
									[d _ d addDays: 1.
									t hours: 0]
								ifFalse: [t hours: t hours + 1]]].
	formatted==#seconds
		ifTrue: [^secondCount]
		ifFalse: [^Array with: d with: t]
