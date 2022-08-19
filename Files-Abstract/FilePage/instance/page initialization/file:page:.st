file: aFile page: aByteArray
	"Set the receiver's file to be aFile, and its page to contain aByteArray."
	file _ aFile.
	page _ aByteArray.
	self reinitialize
