removeSelector: aSymbol
	"Remove the message whose selector is aSymbol from the method
	dictionary of the receiver, if it is there.  Answer nil otherwise."

	(methodDict includesKey: aSymbol) ifFalse: [^nil].
	super removeSelector: aSymbol.
	self organization removeElement: aSymbol.
	Smalltalk changes removeSelector: aSymbol class: self.
	Smalltalk logChange: self name , ' removeSelector: #' , aSymbol
