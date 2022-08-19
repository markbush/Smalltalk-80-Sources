printReceivedButNotSentOn: aFileStream
	"Print a list of messages implemented but not sent anywhere (could be sent
	by performs).

	Smalltalk printReceivedButNotSentOn: (Disk file: 'smalltalk.receivedButNotSent')"

	self allUnSentMessages do:
		[:aString | aFileStream nextPutAll: aString; cr].
	aFileStream close
