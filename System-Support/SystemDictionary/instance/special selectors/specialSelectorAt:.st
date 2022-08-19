specialSelectorAt: anInteger
	"Answer the special message selector stored at location anInteger in the
	system dictionary."
	^SpecialSelectors at: anInteger * 2 - 1
