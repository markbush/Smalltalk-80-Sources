storeOn: aStream
	| noneYet |
	aStream nextPutAll: '(('.
	aStream nextPutAll: self class name.
	aStream nextPutAll: ' new)'.
	noneYet _ true.
	self associationsDo:
			[:each |
			noneYet
				ifTrue: [noneYet _ false]
				ifFalse: [aStream nextPut: $;].
			aStream nextPutAll: ' add: '.
			aStream store: each].
	noneYet ifFalse: [aStream nextPutAll: '; yourself'].
	aStream nextPut: $)
