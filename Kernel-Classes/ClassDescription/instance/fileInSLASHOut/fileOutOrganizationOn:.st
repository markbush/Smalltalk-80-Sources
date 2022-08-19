fileOutOrganizationOn: aFileStream
	"File a description of the receiver's organization onto aFileStream."

	aFileStream emphasis: 3.
	aFileStream cr; nextPut: $!.
	aFileStream nextChunkPut: self name, ' reorganize'; cr.
	aFileStream nextChunkPut: self organization printString; cr.
	aFileStream emphasis: 1
