fileNamed: fileDesignator
	"Answer a FileStream on an old or new File designated by the string fileDesignator."

	| dir fName |
	dir _ FileDirectory directoryFromName: fileDesignator setFileName: [:fName].
	^(dir findOrAddKey: fName) asFileStream
