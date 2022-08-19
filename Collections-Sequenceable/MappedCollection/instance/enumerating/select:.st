select: aBlock
	| aStream |
	aStream _ WriteStream on: (self species new: self size).
	self do:
		[:domainValue |
		(aBlock value: domainValue)
			ifTrue: [aStream nextPut: domainValue]].
	^aStream contents
