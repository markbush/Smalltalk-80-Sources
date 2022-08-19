applyInverseTo: anObject
	"Apply the inverse of the receiver to anObject and answer the result.
	Used to map some object in destination coordinates to one in source coordinates."

	| transformedObject |
	transformedObject _ anObject translateBy: translation x negated @ translation y negated.
	scale == nil
		ifFalse: [transformedObject _ transformedObject scaleBy: 1.0 / scale x @ (1.0 / scale y)].
	^transformedObject
