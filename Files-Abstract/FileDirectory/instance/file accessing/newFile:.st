newFile: aFileName
	"Answer a FileStream on a new File whose name is aFileName;  error if the
	argument is not a new file name."

	^(self addKey: aFileName) asFileStream
