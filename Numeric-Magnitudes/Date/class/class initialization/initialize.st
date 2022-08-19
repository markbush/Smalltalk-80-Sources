initialize
	"Initialize class variables representing the names of the months and days and
	the number of seconds, days in each month, and first day of each month."

	MonthNames _
		#(January February March April May June
			July August September October November December ).
	SecondsInDay _ 24 * 60 * 60.
	DaysInMonth _ #(31 28 31 30 31 30 31 31 30 31 30 31 ).
	FirstDayOfMonth _ #(1 32 60 91 121 152 182 213 244 274 305 335 ).
	WeekDayNames _
		#(Monday Tuesday Wednesday Thursday Friday Saturday Sunday )

	"Date initialize."
