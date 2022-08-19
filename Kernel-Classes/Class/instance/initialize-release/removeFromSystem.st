removeFromSystem
	"Forget the receiver, and all of its subclasses, from the Smalltalk global dictionary.  Any existing instances will refer to an obsolete version of the receiver."

	Smalltalk removeClassNamed: self name. 			"remove from system dictionary"
