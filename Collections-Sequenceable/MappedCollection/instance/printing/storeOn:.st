storeOn: aStream
	aStream nextPut: $(.
	domain storeOn: aStream.
	aStream nextPutAll: ' mappedBy: '.
	map storeOn: aStream.
	aStream nextPut: $)
