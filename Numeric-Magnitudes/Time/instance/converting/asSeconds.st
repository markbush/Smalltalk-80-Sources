asSeconds
	"Answer the number of seconds since midnight of the receiver."

	^3600 * hours + (60 * minutes + seconds)
