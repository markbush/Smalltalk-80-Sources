timeStamp
	"Append the current time to the receiver as a chunk."

	| aStream |
	aStream _ WriteStream on: (String new: 16).
	Smalltalk timeStamp: aStream.
	self nextChunkPut: aStream contents printString.	"double quotes and !s"
	self cr; cr
