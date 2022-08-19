monthIndex
	"Answer the index of the month in which the receiver falls."

	| leap firstDay |
	leap _ self leap.
	12 to: 1 by: -1 do:
		[ :monthIndex |
			firstDay _ (FirstDayOfMonth at: monthIndex)
							+ (monthIndex > 2 ifTrue: [leap] ifFalse: [0]).
			firstDay<= day
				ifTrue: [^monthIndex]].
	self error: 'illegal month'
