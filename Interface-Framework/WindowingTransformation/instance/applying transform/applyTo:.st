applyTo: anObject
	"Apply the receiver to anObject and answer the result.
	Used to map some object in source coordinates to one in destination
	coordinates."

	| transformedObject |
	scale == nil
		ifTrue: [transformedObject _ anObject]
		ifFalse: [transformedObject _ anObject scaleBy: scale].
	transformedObject _ transformedObject translateBy: translation.
	^transformedObject
