putSource: sourceStr class: class category: catName inFile: fileIndex
	"Print an expression that is a message to the argument, class, asking the
	class to accept the source code, sourceStr, as a method in category, catName.
	This is part of the format for writing descriptions of methods on files.
	If no sources are specified, i.e., SourceFile is nil, then do nothing.
	If the fileIndex is 1, print on *.sources;  if it is 2, print on *.changes."

	| file remoteString |
	SourceFiles == nil ifTrue: [^self].
	file _ SourceFiles at: fileIndex.
	file setToEnd; readWriteShorten.
	class printCategoryChunk: catName on: file.
	file cr.
	remoteString _
		RemoteString
			newString: sourceStr
			onFileNumber: fileIndex
			toFile: file.
	file nextChunkPut: ' '; readOnly.
	self setSourcePosition: remoteString position inFile: fileIndex
