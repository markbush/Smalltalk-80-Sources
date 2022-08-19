addEntry: file
	 "called only by Insert: and rename:newName:"

	| entrysize holesize |
	dirFile atEnd
		ifTrue: [holesize _ nil]
		ifFalse: [
			"either a deleted entry or rename entry"
			holesize _ dirFile nextWord bitAnd: Dfmask - 1.
			dirFile skip: -2].

	dirFile readWrite.
	entrysize _ (self fileSize: file) // 2.
	dirFile nextWordPut: Dfmask + entrysize.
	file storeOnDirectory: dirFile.

	(holesize notNil and: [entrysize < holesize])
	  ifTrue: ["mark remaining hole" dirFile nextWordPut: holesize - entrysize].
	dirFile readOnly.
	bitsFile flush
