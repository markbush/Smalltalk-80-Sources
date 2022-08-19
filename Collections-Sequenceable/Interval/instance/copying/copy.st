copy
	"Return a copy of me.
	I override this message because my species is Array and copy, as inherited
	from SequenceableCollection, uses copyFrom:to:, which creates a new object
	of my species"

	^self shallowCopy
