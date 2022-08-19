printOn: aStream
	aStream nextPutAll: '{'.
	self printOn: aStream indent: 0.
	aStream nextPutAll: '}'
