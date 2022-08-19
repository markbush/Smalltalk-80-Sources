storeOn: aStream

	aStream nextPut: $(;
	nextPutAll: self species name;
	nextPutAll: ' origin: ';
	store: origin;
	nextPutAll: ' corner: ';
	store: corner;
	nextPut: $).
