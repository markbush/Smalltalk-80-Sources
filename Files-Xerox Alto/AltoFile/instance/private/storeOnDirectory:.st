storeOnDirectory: aFileStream
	aFileStream nextPutAll: serialNumber.
	aFileStream nextWordPut: 1.
	aFileStream nextWordPut: 0.
	aFileStream nextWordPut: (fileDirectory realToVirtual: leader).
	aFileStream nextPut: fileName size.
	fileName do: [:char | aFileStream nextPut: char asciiValue].
	aFileStream padToNextWordPut: 0
