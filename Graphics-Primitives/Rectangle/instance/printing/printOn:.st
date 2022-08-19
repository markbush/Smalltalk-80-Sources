printOn: aStream
	origin printOn: aStream.
	aStream nextPutAll: ' corner: '.
	corner printOn: aStream
