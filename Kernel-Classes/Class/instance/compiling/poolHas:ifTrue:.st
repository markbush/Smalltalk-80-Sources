poolHas: varName ifTrue: assocBlock
	"Look up the first argument in the context of the receiver.  If it is there,
	pass the association to assocBlock, and answer true, else answer false."
	| assoc pool |
	assoc _ self classPool associationAt: varName ifAbsent: [].
	assoc == nil
		ifFalse:
			[assocBlock value: assoc.
			^true].
	self sharedPools do:
		[:pool |
		assoc _ pool associationAt: varName ifAbsent: [].
		assoc == nil
			ifFalse:
				[assocBlock value: assoc.
				^true]].
	^ false
