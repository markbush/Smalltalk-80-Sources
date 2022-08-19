replaceFrom: start to: stop with: replacement startingAt: repStart
	"This destructively replaces elements from start to stop in the receiver
	starting at index, repStart, in the collection, replacement.  Answer the
	receiver."
	(replacement isKindOf: ByteArray)
		ifTrue:
			[self primReplaceFrom: start to: stop with: replacement startingAt: repStart]
		ifFalse:
			[super replaceFrom: start to: stop with: replacement startingAt: repStart]
