open
	"Open the directory."

	closed _ false.
	(ExternalReferences includes: self)
		ifFalse: [ExternalReferences addLast: self]
