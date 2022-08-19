printOn: aStream
	aStream nextPutAll: 'a CharacterBlock with index '.
	stringIndex printOn: aStream.
	aStream nextPutAll: ' and character '.
	character printOn: aStream.
	aStream nextPutAll: ' and rectangle '.
	super printOn: aStream
