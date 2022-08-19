asSeconds
	"Answer the seconds between a time on1 January 1901 and the same time
	in the receiver's day."

	^SecondsInDay * (self subtractDate: (Date newDay: 1 year: 1901))
