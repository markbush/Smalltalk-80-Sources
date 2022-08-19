storeOn: aStream
	aStream nextPutAll: '(', self class name, ' readFromString: ';
		print: self printString;
		nextPut: $)
