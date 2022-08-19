retry: aSymbol coercing: aNumber
	"Arithmetic represented by the symbol, aSymbol,
	could not be performed with the receiver and the argument,
	aNumber, because of the differences in representation.  Coerce either the
	receiver or the argument, depending on which has higher generality, and
	try again.  If the symbol is the equals sign, answer false if the argument is
	not a Number.  If the generalities are the same, create an error message."

	(aSymbol == #= and: [(aNumber isKindOf: Number) == false])
		ifTrue: [^false].
	self generality < aNumber generality
		ifTrue: [^(aNumber coerce: self) perform: aSymbol with: aNumber].
	self generality > aNumber generality
		ifTrue: [^self perform: aSymbol with: (self coerce: aNumber)].
	self error: 'coercion attempt failed'
