listFilesOn: aStream
	"Write a list of each file name in the receiver onto the stream, aStream."
	self do:
		[:aFile |
		aStream cr.
		aFile fileName printOn: aStream]
