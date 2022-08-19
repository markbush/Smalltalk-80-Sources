file: aFileName
	"Answer a FileStream on an old or new File whose name is aFileName."

	^(self findOrAddKey: aFileName) asFileStream
