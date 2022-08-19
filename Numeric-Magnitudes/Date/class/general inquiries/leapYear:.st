leapYear: yearInteger
	"Answer 1 if the year yearInteger is a leap year;  answer 0 if it is not."

	(yearInteger \\ 4 ~= 0 or: [yearInteger \\ 100 = 0 and: [yearInteger \\ 400 ~= 0]])
		ifTrue: [^0]
		ifFalse: [^1]
