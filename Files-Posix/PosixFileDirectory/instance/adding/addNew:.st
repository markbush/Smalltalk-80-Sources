addNew: aFile 
	| fd |
	fd _ self doPrimitive: 0 arg1: aFile fileName arg2: nil.
	aFile fd: fd.
	aFile readWrite: Write.
	^aFile
