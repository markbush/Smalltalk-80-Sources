text
	| aStream numArgs |
	file == nil ifTrue:
		[aStream _ WriteStream on: (String new: 60).
		(numArgs _ selector numArgs) = 0
			ifTrue: [aStream nextPutAll: selector]
			ifFalse:
				[selector keywords with: (1 to: numArgs) do:
					[:word :i |
					aStream nextPutAll: word; nextPutAll: ' t'; print: i; space]].
		aStream cr; tab; nextPutAll: '"Source code not available"'.
		^aStream contents].
	^super text
