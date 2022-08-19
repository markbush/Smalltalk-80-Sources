initFileName: aFileName
	| aFile |
	aFile _ self fileClass new.
	aFile directory: self.
	aFile fileName: aFileName.
	aFile reinitialize.
	^aFile
