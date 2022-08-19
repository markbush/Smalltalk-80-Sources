logOrganizationChange
	"Record that the receiver is being reorganized on the changes file."
	| file |
	SourceFiles == nil
		ifFalse:
			[file _ SourceFiles at: 2.
			file setToEnd; readWriteShorten.
			file cr; nextChunkPut:
				self name, ' organization changeFromString: ',
					self organization printString storeString.
			file cr; readOnly]
