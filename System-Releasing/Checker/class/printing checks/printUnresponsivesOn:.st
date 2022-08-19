printUnresponsivesOn: aFileStream
	"Print a list of unimplemented subclassResponsibilities.

	Smalltalk printUnresponsivesOn: (Disk file: 'smalltalk.subclassUnimps')"

	self unResponsives do:
		[:aString | aFileStream nextPutAll: aString; cr].
	aFileStream close
