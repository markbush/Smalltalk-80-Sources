printOn: aStream
	aStream nextPutAll: self class name, ' name ', name, ' emphasis ';
		print: emphasis; nextPut: Character cr.
