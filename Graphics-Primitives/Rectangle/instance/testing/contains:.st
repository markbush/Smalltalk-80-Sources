contains: aRectangle
	"Answer whether the receiver is equal to aRectangle or whether aRectangle
	is contained within the receiver."

	^aRectangle origin >= origin and: [aRectangle corner <= corner]
