storeOn: aStream base: anInteger
	"Store the receiver out in the form:  Form newExtent:fromArray:#()offset:"

	aStream nextPut: $(.
	aStream nextPutAll: self species name.
	aStream crtab: 1.
	aStream nextPutAll: 'extent: '.
	self extent printOn: aStream.
	aStream crtab: 1.
	aStream nextPutAll: 'fromArray: #('.
	1 to: self bits size do:
		[:index |
		anInteger = 10
			ifTrue: [aStream space]
			ifFalse: [aStream crtab: 2; nextPutAll: anInteger printString; nextPut: $r].
		(self bits at: index) printOn: aStream base: anInteger].
	aStream nextPut: $).
	aStream crtab: 1.
	aStream nextPutAll: 'offset: '.
	self offset printOn: aStream.
	aStream nextPut: $)
