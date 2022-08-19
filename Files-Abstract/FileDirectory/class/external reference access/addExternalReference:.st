addExternalReference: anElement
	"Add anElement as a file that is currently referenced in the system."
	(ExternalReferences includes: anElement)
		ifFalse: [ExternalReferences addLast: anElement]
