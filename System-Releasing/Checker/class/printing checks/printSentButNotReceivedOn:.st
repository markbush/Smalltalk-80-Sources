printSentButNotReceivedOn: aFileStream
	"Print a list of messages sent but not implemented anywhere.

	Smalltalk printSentButNotReceivedOn:
		(Disk file: 'smalltalk.sentButNotReceived') "

	self allUnimplementedCalls do: [:aString | aFileStream nextPutAll: aString; cr].
	aFileStream close
