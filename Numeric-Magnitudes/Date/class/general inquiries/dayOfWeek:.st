dayOfWeek: dayName
	"Answer the index in a week, 1 - 7, of the day named dayName.  Create an
	error if no such day exists."

	1 to: 7 do: [:index | (WeekDayNames at: index)
			= dayName ifTrue: [^index \\ 7]].
	self error: dayName asString , ' is not a day of the week'
