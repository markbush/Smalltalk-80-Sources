= aTime
	"Answer whether aTime represents the same second as the receiver."

	self species = aTime species
		ifTrue: [^hours = aTime hours
					& (minutes = aTime minutes)
					& (seconds = aTime seconds)]
		ifFalse: [^false]
