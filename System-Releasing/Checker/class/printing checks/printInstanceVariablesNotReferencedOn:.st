printInstanceVariablesNotReferencedOn: aFileStream
	"Print a list of classes and instance variables defined in, but not used in that
	class

	Smalltalk printInstanceVariablesNotReferencedOn:
		(Disk file: 'smalltalk.unrefedIvars') "

	self instanceVariablesNotReferenced do: [:ivar | aFileStream nextPutAll: ivar; cr].
	aFileStream close
