releaseExternalReferences
	"Remove and release all of the files referenced by the collection ExternalReferences."
	[ExternalReferences isEmpty]
		whileFalse: [ExternalReferences removeLast release]
