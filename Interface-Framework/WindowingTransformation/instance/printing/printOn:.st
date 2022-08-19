printOn: aStream
	aStream nextPutAll: self class name, ' scale: ';
		print: scale; nextPutAll: ' translation: ';
		print: translation
