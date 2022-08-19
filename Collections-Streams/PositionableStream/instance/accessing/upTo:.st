upTo: anObject
	"Answer a subcollection from position to the occurrence (if any, not
	inclusive) of anObject. If not there, answer everything."

	| newStream element |
	newStream _ WriteStream on: (collection species new: 64).
	[self atEnd or: [(element _ self next) = anObject]]
		whileFalse: [newStream nextPut: element].
	^newStream contents
