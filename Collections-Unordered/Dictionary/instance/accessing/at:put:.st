at: key put: anObject
	"Set the value at key to be anObject.  If key is not found, create a new
	entry for key and set is value to anObject. Answer anObject."

	| index element |
	index _ self findKeyOrNil: key.
	element _ self basicAt: index.
	element == nil
		ifTrue: [self atNewIndex: index put: (Association key: key value: anObject)]
		ifFalse: [element value: anObject].
	^anObject
