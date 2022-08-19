storeFrom: aFileName1 copyTo: aFileName2
	"Copy file whose name is aFileName1 (usually from a local directory) to a file
	whose name is aFileName2 (usually on the receiver)."

	| f1 f2 |
	f1 _ self oldFile: aFileName1.
	f1 readOnly.
	f2 _ self file: aFileName2.
	f2 nextPutAll: f1.
	f2 close.
	f1 close
