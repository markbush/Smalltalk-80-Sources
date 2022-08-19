allDynamicSuperclasses
	"Answer an OrderedCollection of the receiver and the receiver's ancestor's
	dynamic superclasses;  ordered with immediate superclass first."
	| temp |
	superclass == nil
		ifTrue: [^OrderedCollection new]
		ifFalse: [temp _ superclass allDynamicSuperclasses.
				temp addFirst: superclass.
				^temp]
