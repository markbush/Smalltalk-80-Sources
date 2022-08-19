storeOn: aStream
	aStream nextPutAll: 'OpaqueForm figure: ('.
	figure storeOn: aStream.
	aStream nextPutAll: ') shape: ('.
	shape storeOn: aStream.
	aStream nextPutAll: ')'
