mask
	"Answer an instance of class Form that is to be used as the mask when displaying
	the receiver's model (a DisplayText)."

	mask == nil
		ifTrue: [^self defaultMask]
		ifFalse: [^mask]
