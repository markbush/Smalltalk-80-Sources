nextWord
	"Answer the next two bytes from the receiver as an Integer."

	| high low |
	high _ self next.
		high==nil ifTrue: [^false].
	low _ self next.
		low==nil ifTrue: [^false].
	^(high asInteger bitShift: 8) + low asInteger
