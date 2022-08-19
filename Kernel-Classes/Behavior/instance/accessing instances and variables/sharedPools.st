sharedPools
	"Answer a Set of the pools, dictionaries, that the receiver shares.  Since the receiver
	does not retain knowledge of pool dictionaries, the method fakes it by creating an
	empty array.  Subclasses, such as class Class, override this message."

	^Set new
