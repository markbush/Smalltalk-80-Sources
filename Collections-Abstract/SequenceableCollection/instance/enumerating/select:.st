select: aBlock
	| aStream index length |
	aStream _ WriteStream on: (self species new: self size).
	index _ 0.
	length _ self size.
	[(index _ index + 1) <= length]
		whileTrue:
			[(aBlock value: (self at: index)) ifTrue: [aStream nextPut: (self at: index)]].
	^aStream contents
