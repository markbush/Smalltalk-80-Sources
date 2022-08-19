nextFile: aFile
	| w elen |
	[dirFile atEnd]
		whileFalse:
			["header word of directory"
			w _ dirFile nextWord.
			elen _ w bitAnd: Dfmask - 1.
			(w bitAnd: Dfmask) = Dfmask
				ifTrue:
					["normal entry. create file instance"
					aFile directory: self.
					aFile reinitialize.
					"initialize from directory"
					aFile readFromDirectory: dirFile.
					"skip to end of partially read entry"
					dirFile skip: elen * 2 - (self fileSize: aFile).
					^aFile].
			"deleted entry"
			dirFile skipWords: elen - 1].
	^nil
