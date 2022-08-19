collectPointersTo: anObject
	"Answer an Array of all occurrences in the system of pointers to the argument
	anObject."

	| some me |
	some _ OrderedCollection new.
	me _ thisContext.
	self pointersTo: anObject do:
		[:obj | (obj ~~ me) & (obj ~~ some) ifTrue: [some add: obj]].
	me _ nil. "to avoid circularity"
	^some asArray

	"(Smalltalk collectPointersTo: Browser) inspect."
