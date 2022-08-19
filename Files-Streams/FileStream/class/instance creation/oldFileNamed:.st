oldFileNamed: fileDesignator
	"Answer a FileStream on an old File designated by the string fileDesignator.  Error if the argument is not an old file name."

	| dir fName |
	dir _ FileDirectory directoryFromName: fileDesignator setFileName: [:fName].
	^(dir findKey: fName) asFileStream
