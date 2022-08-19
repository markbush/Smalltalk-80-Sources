putSource: sourceStr inFile: fileIndex
	"Store the source code for the receiver on an external file.
	If no sources are specified, i.e., SourceFile is nil, then do nothing.
	If the fileIndex is 1, print on *.sources;  if it is 2, print on *.changes."

	| file remoteString |
	SourceFiles == nil ifTrue: [^self].
	file _ SourceFiles at: fileIndex.
	file setToEnd; readWriteShorten.
	file cr; nextPut: $!; nextChunkPut: 'Behavior method'; cr.
	remoteString _
		RemoteString
			newString: sourceStr
			onFileNumber: fileIndex
			toFile: file.
	file nextChunkPut: ' '; readOnly.
	self setSourcePosition: remoteString position inFile: fileIndex
