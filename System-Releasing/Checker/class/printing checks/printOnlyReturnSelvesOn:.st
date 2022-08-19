printOnlyReturnSelvesOn: aFileStream
	"Print a list of messages that are only ^self (unimplemented).

	Smalltalk printOnlyReturnSelvesOn:
		(Disk file: 'smalltalk.unimplementeds') "

	self onlyReturnSelves do: [:aString | aFileStream nextPutAll: aString; cr].
	aFileStream close
