copy
	"Make a copy of the receiver without a list of subclasses.  Share the
	reference to the sole instance."

	| copy t |
	t _ thisClass.
	thisClass _ nil.
	copy _ super copy.
	thisClass _ t.
	^copy
