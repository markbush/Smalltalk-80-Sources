copy
	"Make a copy of the receiver without a list of subclasses."

	| myCopy savedSubclasses |
	savedSubclasses _ subclasses.
	subclasses _ nil.
	myCopy _ self shallowCopy.
	subclasses _ savedSubclasses.
	^myCopy methodDictionary: methodDict copy
