flash: aRectangle
	"Complement twice the area of the screen defined by the argument, aRectangle."

	2 timesRepeat:
		[self fill: aRectangle
			rule: Form reverse
			mask: Form black.
		(Delay forMilliseconds: 60) wait]
