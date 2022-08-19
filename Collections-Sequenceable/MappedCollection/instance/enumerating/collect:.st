collect: aBlock
	| aStream |
	aStream _ WriteStream on: (self species new: self size).
	self do:
		[:domainValue |
		aStream nextPut: (aBlock value: domainValue)].
	^aStream contents
