oldFile: aFileName
	"Answer a FileStream on an old File whose name is aFileName;  error if the
	argument is not an old name."

	^(self findKey: aFileName) asFileStream
