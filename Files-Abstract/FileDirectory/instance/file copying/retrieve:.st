retrieve: aFileName
	"Copy the file whose name is aFileName to itself.  Subclasses may want to overwrite this to
	redirect the directory on which a file of the same name is copied.  See
	FileDirectory|retrieveFrom:copyTo:."
	^self retrieveFrom: aFileName copyTo: aFileName
