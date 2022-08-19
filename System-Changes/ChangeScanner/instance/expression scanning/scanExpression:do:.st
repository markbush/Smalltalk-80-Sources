scanExpression: aStream do: aBlock
	"Scan a chunk of file consisting of an expression.  This might be a class
	definition, a class removal, a class comment change, a method removal,
	or a doIt."

	| class item |
	super scan: aStream.
	((class _ self nextClass) notNil and: [tokenType == #keyword or: [tokenType == #word]])
		ifTrue:
			[self scanClassExpression: class do:
				[:item | tokenType == #doIt ifTrue: [aBlock value: item]]].
	item == nil ifTrue: [aBlock value: OtherChange new]
