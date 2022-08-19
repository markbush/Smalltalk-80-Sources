label
	"Answer the string that appears in the receiver's label."
	^labelText isNil
		ifTrue: [^'']
		ifFalse: [labelText asString]
