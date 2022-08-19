superclasses
	"Answer with an array of all the receiver's superclasses."
	superclass == nil ifTrue: [^#()].
	self hasMultipleSuperclasses
		ifTrue: [^ (Array with: superclass) , self class otherSuperclasses].
	^ Array with: superclass
