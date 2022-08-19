fileOutHeaderOn: aStream
	aStream nextPut: $!;
		nextPutAll: className;
		nextPutAll: ' methodsFor: ';
		store: category asString;
		nextPut: $!; cr; cr
