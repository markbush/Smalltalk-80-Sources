printOn: aStream
	home == nil ifTrue: [^aStream nextPutAll: 'a BlockContext with home=nil'].
	aStream nextPutAll: '[] in '.
	super printOn: aStream
