writesField: field
	"Answer whether the receiver stores into the instance variable indexed
	by the argument."

	self isQuick ifTrue: [^false].
	(field <= 8 and: [self scanFor: 96 + field - 1])
		ifTrue: [^true]
		ifFalse: [^self scanLongStore: field - 1]
