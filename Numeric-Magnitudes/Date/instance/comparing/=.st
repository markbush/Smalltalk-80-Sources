= aDate
	"Answer whether aDate is the same day as the receiver."

	self species = aDate species
		ifTrue: [^day = aDate day & (year = aDate year)]
		ifFalse: [^false]
