storeOn: aStream
	"Clases and Metaclasses have global names."
	aStream nextPutAll: self name
