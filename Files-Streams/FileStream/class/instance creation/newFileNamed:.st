newFileNamed: fileDesignator
	"Answer a FileStream on a new File designated by the string fileDesignator.  Error if the argument is not a new file name."

	| dir fName |
	dir _ FileDirectory directoryFromName: fileDesignator setFileName: [:fName].
	^(dir addKey: fName) asFileStream
