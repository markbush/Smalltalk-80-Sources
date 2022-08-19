printOn: aStream
	aStream nextPutAll:
		(self closed
			ifTrue: ['a closed ']
			ifFalse: ['an open ']).
	aStream nextPutAll: self class name.
	aStream nextPutAll: ' on '.
	directoryName printOn: aStream
