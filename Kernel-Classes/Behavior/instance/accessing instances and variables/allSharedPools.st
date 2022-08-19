allSharedPools
	"Answer a Set of the pools, dictionaries, that the receiver and the
	receiver's ancestors share.  Subclasses, such as class Class, override this message."

	^superclass allSharedPools
