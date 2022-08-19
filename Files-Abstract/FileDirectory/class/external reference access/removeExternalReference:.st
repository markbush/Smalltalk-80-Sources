removeExternalReference: anElement
	"Remove anElement as a file that is currently referenced in the system."
	ExternalReferences remove: anElement ifAbsent: []
