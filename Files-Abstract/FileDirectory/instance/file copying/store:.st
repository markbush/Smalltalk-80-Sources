store: aFileName
	"Store the file whose name is aFileName to itself.  Subclasses may want to overwrite this to
	redirect the directory on which a file of the same name is copied.  See
	FileDirectory|storeFrom:copyTo:."
	^self storeFrom: aFileName copyTo: aFileName
