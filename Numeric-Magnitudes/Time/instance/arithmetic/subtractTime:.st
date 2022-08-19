subtractTime: timeAmount
	"Answer a new Time that is timeAmount before the receiver.  timeAmount is an
	instance of Date or Time."

	^Time fromSeconds: self asSeconds - timeAmount asSeconds
