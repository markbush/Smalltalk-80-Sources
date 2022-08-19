scopeHas: varName ifTrue: assocBlock
	"Look up varName in this class, its superclasses, and Smalltalk.  If it is there,
	pass the association to assocBlock, and answer true; else answer false."
	| assoc |
	self withAllSuperclasses do:
		[:sup |
		(sup poolHas: varName ifTrue: assocBlock) ifTrue: [^true]].
	assoc _ Smalltalk associationAt: varName ifAbsent: [].
	assoc == nil
		ifFalse:
			[assocBlock value: assoc.
			^true].
	^false
