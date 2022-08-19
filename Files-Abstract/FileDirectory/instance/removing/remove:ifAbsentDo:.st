remove: aFileName ifAbsentDo: aBlock
	"Remove aFile if found in the receiver.  Answer the result of evaluating aBlock if the file is not found."

	| f |
	f _ self find: aFileName ifAbsentDo: aBlock.
	f notNil
		ifTrue: [^self removeOld: f]
		ifFalse: [^aBlock value: f]
