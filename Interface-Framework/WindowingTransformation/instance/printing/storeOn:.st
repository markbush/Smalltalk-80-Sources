storeOn: aStream
	aStream nextPut: $(; nextPutAll: self species name;
	nextPutAll: ' scale: ';
	store: scale; cr;
	nextPutAll: ' translation: ';
	store: translation;
	nextPut: $).
