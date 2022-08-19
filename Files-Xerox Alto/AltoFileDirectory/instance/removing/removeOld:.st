removeOld: file
	| aFile |
	aFile _ self deleteEntry: file.
	aFile open.
	aFile endFile: nil.
	bitsFile flush
