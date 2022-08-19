copyChangesTo: newFileName
	"If the file name supplied is different than the current changes file name, copy the changes file and install the new copy as the changes file."

	| oldName newFile |
	SourceFiles == nil ifTrue: [^self].
	oldName _ (SourceFiles at: 2) name.
	oldName last = $. ifTrue: [oldName _ oldName copyFrom: 1 to: oldName size-1].
	(newFileName sameAs: oldName) ifFalse:
		[Transcript cr; show: 'Copying ', oldName,
			' to ', newFileName, '...'.
		(SourceFiles at: 2) close; readOnly; reset.
		newFile _ FileStream fileNamed: newFileName.
		Cursor write showWhile:
			[newFile nextPutAll: (SourceFiles at: 2)].
		newFile readOnly.
		SourceFiles at: 2 put: newFile.
		Transcript show: ' done'; cr]
