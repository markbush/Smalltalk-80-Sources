changeFromString: aString
	"Intercept to notify the system change set of the system reorganization."

	| file |
	SourceFiles == nil
		ifFalse:
			[file _ SourceFiles at: 2.
			file setToEnd; readWriteShorten.
			file cr; nextChunkPut: 'SystemOrganization changeFromString: ',
					SystemOrganization printString storeString.
			file cr; readOnly].
	Smalltalk changes reorganizeSystem.
	super changeFromString: aString.
