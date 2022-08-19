printOn: aStream
	"Intercepted to avoid infinite recursion when #Smalltalk is reached."
	| tooMany |
	tooMany _ aStream position + self maxPrint.
	aStream nextPutAll: self class name, ' keys ('.
	self keysDo:
		[:key |
		aStream position > tooMany ifTrue: [aStream nextPutAll: '...etc...)'. ^self].
		key printOn: aStream.
		aStream space].
	aStream nextPut: $)
