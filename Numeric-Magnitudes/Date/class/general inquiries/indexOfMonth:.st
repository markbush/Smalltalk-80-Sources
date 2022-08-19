indexOfMonth: monthName
	"Answer the index, 1 - 12, of the month monthName.  Create an
	error if no such month exists."

	1 to: 12 do:
		[ :index |
			(monthName , '*' match: (MonthNames at: index))
						ifTrue: [^index]].
	self error: monthName , ' is not a recognized month name'
