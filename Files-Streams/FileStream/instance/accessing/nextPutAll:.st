nextPutAll: aCollection
	| dmax howManyWritten increment collectionSize |

	((aCollection isKindOf: ByteArray) or: [aCollection isKindOf: String])
		ifFalse: [^super nextPutAll: aCollection].

	rwmode == nil
		ifTrue: [self readWriteShorten "default mode"].
	(rwmode bitAnd: Write) = 0
		ifTrue: [^self error: 'no writing allowed!'].
	closed ifTrue: [self reopen].

	howManyWritten _ 0.
	collectionSize _ aCollection size.
	dmax _ (page dataMaxEnd).
	[
	increment _ (dmax - position) min: (collectionSize - howManyWritten).
	collection replaceFrom: (position + 1) to: (position _ position + increment)
		with: aCollection startingAt: (howManyWritten + 1).
	howManyWritten _ howManyWritten + increment.
	howManyWritten < collectionSize.
	] whileTrue:
		[
		self nextPage isNil ifTrue: [^self error: 'cannot write!!!'].
		position = readLimit ifTrue: [writeLimit _ dmax].
		].
	position > writeLimit ifTrue: [writeLimit _ dmax].
	^aCollection
