string: aString onFileNumber: anInteger
	"Store this as my string if source files exist"

	| theFile |
	SourceFiles == nil
		ifFalse:
			[theFile _ SourceFiles at: anInteger.
			theFile setToEnd; readWriteShorten; cr.
			self string: aString
				onFileNumber: anInteger
				toFile: theFile.
			theFile readOnly]
